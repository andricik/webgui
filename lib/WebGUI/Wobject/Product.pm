package WebGUI::Wobject::Product;

#-------------------------------------------------------------------
# WebGUI is Copyright 2001-2002 Plain Black LLC.
#-------------------------------------------------------------------
# Please read the legal notices (docs/legal.txt) and the license
# (docs/license.txt) that came with this distribution before using
# this software.
#-------------------------------------------------------------------
# http://www.plainblack.com                     info@plainblack.com
#-------------------------------------------------------------------

use strict;
use Tie::CPHash;
use WebGUI::Attachment;
use WebGUI::HTMLForm;
use WebGUI::Icon;
use WebGUI::International;
use WebGUI::Privilege;
use WebGUI::Session;
use WebGUI::SQL;
use WebGUI::URL;
use WebGUI::Wobject;

our @ISA = qw(WebGUI::Wobject);
our $namespace = "Product";
our $name = WebGUI::International::get(1,$namespace);

#-------------------------------------------------------------------
sub duplicate {
        my ($w, $file, %data, $newId, $sth);
	tie %data, 'Tie::CPHash';
        $w = $_[0]->SUPER::duplicate($_[1]);
	$w = WebGUI::Wobject::Product->new({wobjectId=>$w,namespace=>$namespace});
	$w->set({
		image1=>$_[0]->get("image1"),
		image2=>$_[0]->get("image2"),
		image3=>$_[0]->get("image3"),
		warranty=>$_[0]->get("warranty"),
		manual=>$_[0]->get("manual"),
		brochure=>$_[0]->get("brochure"),
		price=>$_[0]->get("price"),
		templateId=>$_[0]->get("templateId"),
		productNumber=>$_[0]->get("productNumber")
		});
	$file = WebGUI::Attachment->new($_[0]->get("image1"),$_[0]->get("wobjectId"));
        $file->copy($w->get("wobjectId"));
        $file = WebGUI::Attachment->new($_[0]->get("image2"),$_[0]->get("wobjectId"));
        $file->copy($w->get("wobjectId"));
        $file = WebGUI::Attachment->new($_[0]->get("image3"),$_[0]->get("wobjectId"));
        $file->copy($w->get("wobjectId"));
        $file = WebGUI::Attachment->new($_[0]->get("manual"),$_[0]->get("wobjectId"));
        $file->copy($w->get("wobjectId"));
        $file = WebGUI::Attachment->new($_[0]->get("brochure"),$_[0]->get("wobjectId"));
        $file->copy($w->get("wobjectId"));
        $file = WebGUI::Attachment->new($_[0]->get("warranty"),$_[0]->get("wobjectId"));
        $file->copy($w->get("wobjectId"));
        $sth = WebGUI::SQL->read("select * from Product_feature where wobjectId=".$_[0]->get("wobjectId"));
        while (%data = $sth->hash) {
                $newId = getNextId("Product_featureId");
                WebGUI::SQL->write("insert into Product_feature values (".$w->get("wobjectId").", $newId, "
			.quote($data{feature}).", $data{sequenceNumber})");
        }
        $sth->finish;
        $sth = WebGUI::SQL->read("select * from Product_benefit where wobjectId=".$_[0]->get("wobjectId"));
        while (%data = $sth->hash) {
                $newId = getNextId("Product_benefitId");
                WebGUI::SQL->write("insert into Product_benefit values (".$w->get("wobjectId").", $newId, "
                        .quote($data{benefit}).", $data{sequenceNumber})");
        }
        $sth->finish;
        $sth = WebGUI::SQL->read("select * from Product_specification where wobjectId=".$_[0]->get("wobjectId"));
        while (%data = $sth->hash) {
                $newId = getNextId("Product_specificationId");
                WebGUI::SQL->write("insert into Product_specification values (".$w->get("wobjectId").", $newId, "
                        .quote($data{name}).", ".quote($data{value}).", ".quote($data{units}).", $data{sequenceNumber})");
        }
        $sth->finish;
        $sth = WebGUI::SQL->read("select * from Product_accessory where wobjectId=".$_[0]->get("wobjectId"));
        while (%data = $sth->hash) {
                WebGUI::SQL->write("insert into Product_accessory values (".$w->get("wobjectId").", 
			$data{accessoryWobjectId}, $data{sequenceNumber})");
        }
        $sth->finish;
        $sth = WebGUI::SQL->read("select * from Product_related where wobjectId=".$_[0]->get("wobjectId"));
        while (%data = $sth->hash) {
                WebGUI::SQL->write("insert into Product_related values (".$w->get("wobjectId").", 
			$data{relatedWobjectId}, $data{sequenceNumber})");
        }
        $sth->finish;
}

#-------------------------------------------------------------------
sub purge {
        WebGUI::SQL->write("delete from Product_accessory where wobjectId=".$_[0]->get("wobjectId")." 
		or accessoryWobjectId=".$_[0]->get("wobjectId"));
        WebGUI::SQL->write("delete from Product_related where wobjectId=".$_[0]->get("wobjectId")."
		or relatedWobjectId=".$_[0]->get("wobjectId"));
        WebGUI::SQL->write("delete from Product_benefit where wobjectId=".$_[0]->get("wobjectId"));
        WebGUI::SQL->write("delete from Product_feature where wobjectId=".$_[0]->get("wobjectId"));
        WebGUI::SQL->write("delete from Product_specification where wobjectId=".$_[0]->get("wobjectId"));
	$_[0]->SUPER::purge();
}

#-------------------------------------------------------------------
sub set {
        $_[0]->SUPER::set($_[1],[qw(price templateId productNumber image1 image2 image3 manual brochure warranty)]);
}

#-------------------------------------------------------------------
sub www_addAccessory {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        my ($output, $f, $accessory, @usedAccessories);
	$output = helpIcon(4,$namespace);
        $output .= '<h1>'.WebGUI::International::get(16,$namespace).'</h1>';
        $f = WebGUI::HTMLForm->new;
        $f->hidden("wid",$_[0]->get("wobjectId"));
        $f->hidden("func","addAccessorySave");
        @usedAccessories = WebGUI::SQL->quickArray("select accessoryWobjectId from Product_accessory
                where wobjectId=".$session{form}{wid});
        push(@usedAccessories,$session{form}{wid});
        $accessory = WebGUI::SQL->buildHashRef("select wobjectId,title from wobject where namespace='Product'
                and wobjectId not in (".join(",",@usedAccessories).")");
        $f->select("accessoryWobjectId",$accessory,WebGUI::International::get(17,$namespace));
        $f->yesNo("proceed",WebGUI::International::get(18,$namespace));
        $f->submit;
        $output .= $f->print;
        return $output;
}

#-------------------------------------------------------------------
sub www_addAccessorySave {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        my ($seq);
        ($seq) = WebGUI::SQL->quickArray("select max(sequenceNumber) from Product_accessory
                where wobjectId=".$_[0]->get("wobjectId"));
        WebGUI::SQL->write("insert into Product_accessory (wobjectId,accessoryWobjectId,sequenceNumber) values
                (".$_[0]->get("wobjectId").",$session{form}{accessoryWobjectId},".($seq+1).")");
        if ($session{form}{proceed}) {
                return $_[0]->www_addAccessory();
        } else {
                return "";
        }
}

#-------------------------------------------------------------------
sub www_addRelated {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        my ($output, $f, $related, @usedRelated);
	$output = helpIcon(5,$namespace);
        $output .= '<h1>'.WebGUI::International::get(19,$namespace).'</h1>';
        $f = WebGUI::HTMLForm->new;
        $f->hidden("wid",$_[0]->get("wobjectId"));
        $f->hidden("func","addRelatedSave");
        @usedRelated = WebGUI::SQL->quickArray("select relatedWobjectId from Product_related
                where wobjectId=".$session{form}{wid});
        push(@usedRelated,$session{form}{wid});
        $related = WebGUI::SQL->buildHashRef("select wobjectId,title from wobject where namespace='Product'
                and wobjectId not in (".join(",",@usedRelated).")");
        $f->select("relatedWobjectId",$related,WebGUI::International::get(20,$namespace));
        $f->yesNo("proceed",WebGUI::International::get(21,$namespace));
        $f->submit;
        $output .= $f->print;
        return $output;
}

#-------------------------------------------------------------------
sub www_addRelatedSave {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        my ($seq);
        ($seq) = WebGUI::SQL->quickArray("select max(sequenceNumber) from Product_related
     		where wobjectId=".$_[0]->get("wobjectId"));
        WebGUI::SQL->write("insert into Product_related (wobjectId,relatedWobjectId,sequenceNumber) values
                (".$_[0]->get("wobjectId").",$session{form}{relatedWobjectId},".($seq+1).")");
        if ($session{form}{proceed}) {
                return $_[0]->www_addRelated();
        } else {
                return "";
        }
}

#-------------------------------------------------------------------
sub www_deleteAccessory {
        return $_[0]->confirm(
                WebGUI::International::get(2,$namespace),
		WebGUI::URL::page('func=deleteAccessoryConfirm&wid='.$_[0]->get("wobjectId").'&aid='.$session{form}{aid})
                );
}

#-------------------------------------------------------------------
sub www_deleteAccessoryConfirm {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
	WebGUI::SQL->write("delete from Product_accessory where wobjectId=$session{form}{wid} and accessoryWobjectId=$session{form}{aid}");
	$_[0]->reorderCollateral("Product_accessory","accessoryWobjectId");
        return "";
}

#-------------------------------------------------------------------
sub www_deleteBenefit {
        return $_[0]->confirm(
                WebGUI::International::get(48,$namespace),
		WebGUI::URL::page('func=deleteBenefitConfirm&wid='.$_[0]->get("wobjectId").'&bid='.$session{form}{bid})
                );
}

#-------------------------------------------------------------------
sub www_deleteBenefitConfirm {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
	$_[0]->deleteCollateral("Product_benefit","Product_benefitId",$session{form}{bid});
	$_[0]->reorderCollateral("Product_benefit","Product_benefitId");
        return "";
}

#-------------------------------------------------------------------
sub www_deleteFeature {
	return $_[0]->confirm(
		WebGUI::International::get(3,$namespace),
		WebGUI::URL::page('func=deleteFeatureConfirm&wid='.$_[0]->get("wobjectId").'&fid='.$session{form}{fid})
		);
}

#-------------------------------------------------------------------
sub www_deleteFeatureConfirm {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
	$_[0]->deleteCollateral("Product_feature","Product_featureId",$session{form}{fid});
	$_[0]->reorderCollateral("Product_feature","Product_featureId");
        return "";
}

#-------------------------------------------------------------------
sub www_deleteRelated {
        return $_[0]->confirm(
                WebGUI::International::get(4,$namespace),
		WebGUI::URL::page('func=deleteRelatedConfirm&wid='.$_[0]->get("wobjectId").'&rid='.$session{form}{rid})
                );
}

#-------------------------------------------------------------------
sub www_deleteRelatedConfirm {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        WebGUI::SQL->write("delete from Product_related where wobjectId=$session{form}{wid} and relatedWobjectId=$session{form}{rid}");
	$_[0]->reorderCollateral("Product_related","relatedWobjectId");
        return "";
}

#-------------------------------------------------------------------
sub www_deleteSpecification {
        return $_[0]->confirm(
                WebGUI::International::get(5,$namespace),
		WebGUI::URL::page('func=deleteSpecificationConfirm&wid='.$_[0]->get("wobjectId").'&sid='.$session{form}{sid})
                );
}

#-------------------------------------------------------------------
sub www_deleteSpecificationConfirm {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
	$_[0]->deleteCollateral("Product_specification","Product_specificationId",$session{form}{sid});
	$_[0]->reorderCollateral("Product_specification","Product_specificationId");
        return "";
}

#-------------------------------------------------------------------
sub www_edit {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        my ($f, $output, $template);
	$output = helpIcon(1,$namespace);
        $output .= '<h1>'.WebGUI::International::get(6,$namespace).'</h1>';
	if ($_[0]->get("wobjectId") eq "new") {
		$template = 1;
	} else {
		$template = $_[0]->get("templateId");
	}
	$f = WebGUI::HTMLForm->new;
        $f->template(
                -name=>"templateId",
                -value=>$template,
                -namespace=>$namespace,
                -label=>WebGUI::International::get(61,$namespace),
		-afterEdit=>'func=edit&wid='.$_[0]->get("wobjectId")
                );
	$f->text("price",WebGUI::International::get(10,$namespace),$_[0]->get("price"));
	$f->text("productNumber",WebGUI::International::get(11,$namespace),$_[0]->get("productNumber"));
	$f->raw($_[0]->fileProperty("image1",7));
	$f->raw($_[0]->fileProperty("image2",8));
	$f->raw($_[0]->fileProperty("image3",9));
	$f->raw($_[0]->fileProperty("brochure",13));
	$f->raw($_[0]->fileProperty("manual",14));
	$f->raw($_[0]->fileProperty("warranty",15));
	$output .= $_[0]->SUPER::www_edit($f->printRowsOnly);
        return $output;
}

#-------------------------------------------------------------------
sub www_editSave {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
	my ($file, %property);
	$_[0]->SUPER::www_editSave() if ($_[0]->get("wobjectId") eq "new");
	$file = WebGUI::Attachment->new("",$_[0]->get("wobjectId"));
        $file->save("image1");
	$property{image1}=$file->getFilename("image1") if ($file->getFilename("image1") ne "");
        $file = WebGUI::Attachment->new("",$_[0]->get("wobjectId"));
        $file->save("image2");
        $property{image2}=$file->getFilename("image2") if ($file->getFilename("image2") ne "");
        $file = WebGUI::Attachment->new("",$_[0]->get("wobjectId"));
        $file->save("image3");
        $property{image3}=$file->getFilename("image3") if ($file->getFilename("image3") ne "");
        $file = WebGUI::Attachment->new("",$_[0]->get("wobjectId"));
        $file->save("manual");
        $property{manual}=$file->getFilename("manual") if ($file->getFilename("manual") ne "");
        $file = WebGUI::Attachment->new("",$_[0]->get("wobjectId"));
        $file->save("brochure");
        $property{brochure}=$file->getFilename("brochure") if ($file->getFilename("brochure") ne "");
        $file = WebGUI::Attachment->new("",$_[0]->get("wobjectId"));
        $file->save("warranty");
        $property{warranty}=$file->getFilename("warranty") if ($file->getFilename("warranty") ne "");
	$property{templateId}=$session{form}{templateId};
	$property{price}=$session{form}{price};
	$property{productNumber}=$session{form}{productNumber};
	$_[0]->SUPER::www_editSave(\%property);
	return "";
}

#-------------------------------------------------------------------
sub www_editBenefit {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        my ($output, $data, $f, $benefits);
	$data = $_[0]->getCollateral("Product_benefit","Product_benefitId",$session{form}{bid});
        $output = helpIcon(6,$namespace);
        $output .= '<h1>'.WebGUI::International::get(53,$namespace).'</h1>';
        $f = WebGUI::HTMLForm->new;
        $f->hidden("wid",$_[0]->get("wobjectId"));
        $f->hidden("bid",$data->{Product_benefitId});
        $f->hidden("func","editBenefitSave");
        $benefits = WebGUI::SQL->buildHashRef("select benefit,benefit from Product_benefit order by benefit");
        $f->combo("benefit",$benefits,WebGUI::International::get(51,$namespace),[$data->{benefits}]);
        $f->yesNo("proceed",WebGUI::International::get(52,$namespace));
        $f->submit;
        $output .= $f->print;
        return $output;
}

#-------------------------------------------------------------------
sub www_editBenefitSave {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $session{form}{benefit} = $session{form}{benefit_new} if ($session{form}{benefit_new} ne "");
	$_[0]->setCollateral("Product_benefit", "Product_benefitId", {
		Product_benefitId => $session{form}{bid},
		benefit => $session{form}{benefit}
		});
        if ($session{form}{proceed}) {
                $session{form}{bid} = "new";
                return $_[0]->www_editBenefit();
        } else {
                return "";
        }
}

#-------------------------------------------------------------------
sub www_editFeature {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        my ($output, $data, $f, $features);
	$data = $_[0]->getCollateral("Product_feature","Product_featureId",$session{form}{fid});
	$output = helpIcon(2,$namespace);
        $output .= '<h1>'.WebGUI::International::get(22,$namespace).'</h1>';
        $f = WebGUI::HTMLForm->new;
        $f->hidden("wid",$_[0]->get("wobjectId"));
        $f->hidden("fid",$data->{Product_featureId});
        $f->hidden("func","editFeatureSave");
	$features = WebGUI::SQL->buildHashRef("select feature,feature from Product_feature order by feature");
        $f->combo("feature",$features,WebGUI::International::get(23,$namespace),[$data->{feature}]);
        $f->yesNo("proceed",WebGUI::International::get(24,$namespace));
        $f->submit;
        $output .= $f->print;
        return $output;
}

#-------------------------------------------------------------------
sub www_editFeatureSave {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
	$session{form}{feature} = $session{form}{feature_new} if ($session{form}{feature_new} ne "");
        $_[0]->setCollateral("Product_feature", "Product_featureId", {
                Product_featureId => $session{form}{fid},
                feature => $session{form}{feature}
                });
        if ($session{form}{proceed}) {
                $session{form}{fid} = "new";
                return $_[0]->www_editFeature();
        } else {
                return "";
        }
}

#-------------------------------------------------------------------
sub www_editSpecification {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        my ($output, $data, $f, $hashRef);
	$data = $_[0]->getCollateral("Product_specification","Product_specificationId",$session{form}{sid});
	$output = helpIcon(3,$namespace);
        $output .= '<h1>'.WebGUI::International::get(25,$namespace).'</h1>';
        $f = WebGUI::HTMLForm->new;
        $f->hidden("wid",$_[0]->get("wobjectId"));
        $f->hidden("sid",$data->{Product_specificationId});
        $f->hidden("func","editSpecificationSave");
        $hashRef = WebGUI::SQL->buildHashRef("select name,name from Product_specification order by name");
        $f->combo("name",$hashRef,WebGUI::International::get(26,$namespace),[$data->{name}]);
        $f->text("value",WebGUI::International::get(27,$namespace),$data->{value});
        $hashRef = WebGUI::SQL->buildHashRef("select units,units from Product_specification order by units");
        $f->combo("units",$hashRef,WebGUI::International::get(29,$namespace),[$data->{units}]);
        $f->yesNo("proceed",WebGUI::International::get(28,$namespace));
        $f->submit;
        $output .= $f->print;
        return $output;
}

#-------------------------------------------------------------------
sub www_editSpecificationSave {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $session{form}{name} = $session{form}{name_new} if ($session{form}{name_new} ne "");
        $session{form}{units} = $session{form}{units_new} if ($session{form}{units_new} ne "");
        $_[0]->setCollateral("Product_specification", "Product_specificationId", {
                Product_specificationId => $session{form}{sid},
                name => $session{form}{name},
                value => $session{form}{value},
                units => $session{form}{units}
                });
        if ($session{form}{proceed}) {
                $session{form}{sid} = "new";
                return $_[0]->www_editSpecification();
        } else {
                return "";
        }
}

#-------------------------------------------------------------------
sub www_moveAccessoryDown {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $_[0]->moveCollateralDown("Product_related","accessoryWobjectId",$session{form}{aid});
	return "";
}

#-------------------------------------------------------------------
sub www_moveAccessoryUp {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $_[0]->moveCollateralUp("Product_accessory","accessoryWobjectId",$session{form}{aid});
	return "";
}

#-------------------------------------------------------------------
sub www_moveBenefitDown {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $_[0]->moveCollateralDown("Product_benefit","Product_benefitId",$session{form}{bid});
	return "";
}

#-------------------------------------------------------------------
sub www_moveBenefitUp {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $_[0]->moveCollateralUp("Product_benefit","Product_benefitId",$session{form}{bid});
	return "";
}

#-------------------------------------------------------------------
sub www_moveFeatureDown {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $_[0]->moveCollateralDown("Product_feature","Product_featureId",$session{form}{fid});
	return "";
}

#-------------------------------------------------------------------
sub www_moveFeatureUp {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
	$_[0]->moveCollateralUp("Product_feature","Product_featureId",$session{form}{fid});
	return "";
}

#-------------------------------------------------------------------
sub www_moveRelatedDown {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $_[0]->moveCollateralDown("Product_related","relatedWobjectId",$session{form}{rid});
	return "";
}

#-------------------------------------------------------------------
sub www_moveRelatedUp {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $_[0]->moveCollateralUp("Product_related","relatedWobjectId",$session{form}{rid});
	return "";
}

#-------------------------------------------------------------------
sub www_moveSpecificationDown {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $_[0]->moveCollateralDown("Product_specification","Product_specificationId",$session{form}{sid});
	return "";
}

#-------------------------------------------------------------------
sub www_moveSpecificationUp {
	return WebGUI::Privilege::insufficient() unless (WebGUI::Privilege::canEditPage());
        $_[0]->moveCollateralUp("Product_specification","Product_specificationId",$session{form}{sid});
	return "";
}

#-------------------------------------------------------------------
sub www_view {
        my ($output, %data, $sth, $file, $segment, $template, %var, @featureloop, @benefitloop, @specificationloop,
		@accessoryloop, @relatedloop);
        tie %data, 'Tie::CPHash';
        $output = $_[0]->displayTitle;
	#---brochure
        if ($_[0]->get("brochure")) {
                $file = WebGUI::Attachment->new($_[0]->get("brochure"),$_[0]->get("wobjectId"));
                $var{brochure} = '<a href="'.$file->getURL.'"><img src="'.$file->getIcon.'" border=0 align="absmiddle"> '
			.WebGUI::International::get(13,$namespace).'</a>';
		$var{brochureURL} = $file->getURL;
        }
	#---manual
        if ($_[0]->get("manual")) {
                $file = WebGUI::Attachment->new($_[0]->get("manual"),$_[0]->get("wobjectId"));
                $var{manual} = '<a href="'.$file->getURL.'"><img src="'.$file->getIcon.'" border=0 align="absmiddle"> '
			.WebGUI::International::get(14,$namespace).'</a>';
		$var{manualURL} = $file->getURL;
        }
	#---warranty
        if ($_[0]->get("warranty")) {
                $file = WebGUI::Attachment->new($_[0]->get("warranty"),$_[0]->get("wobjectId"));
                $var{warranty} = '<a href="'.$file->getURL.'"><img src="'.$file->getIcon.'" border=0 align="absmiddle"> '
			.WebGUI::International::get(15,$namespace).'</a>';
		$var{warrantyURL} = $file->getURL;
        }
	#---image1
        if ($_[0]->get("image1")) {
                $file = WebGUI::Attachment->new($_[0]->get("image1"),$_[0]->get("wobjectId"));
                $var{image1} = '<img src="'.$file->getURL.'" border=0>';
                $var{image1thumbnail} = '<a href="'.$file->getURL.'"><img src="'.$file->getThumbnail.'" border=0></a>';
		$var{image1url} = $file->getURL;
        }
	#---image2
        if ($_[0]->get("image2")) {
                $file = WebGUI::Attachment->new($_[0]->get("image2"),$_[0]->get("wobjectId"));
                $var{image2} = '<img src="'.$file->getURL.'" border=0>';
                $var{image2thumbnail} = '<a href="'.$file->getURL.'"><img src="'.$file->getThumbnail.'" border=0></a>';
		$var{image2url} = $file->getURL;
        }
	#---image3
        if ($_[0]->get("image3")) {
                $file = WebGUI::Attachment->new($_[0]->get("image3"),$_[0]->get("wobjectId"));
                $var{image3} = '<img src="'.$file->getURL.'" border=0>';
                $var{image3thumbnail} = '<a href="'.$file->getURL.'"><img src="'.$file->getThumbnail.'" border=0></a>';
                $var{image3url} = $file->getURL;
        }

	#---features 
        if ($session{var}{adminOn}) {
        	$var{addFeature} = '<a href="'.WebGUI::URL::page('func=editFeature&fid=new&wid='
			.$_[0]->get("wobjectId")).'">'.WebGUI::International::get(34,$namespace).'</a>';
        }
        $sth = WebGUI::SQL->read("select feature,Product_featureId from Product_feature where wobjectId="
		.$_[0]->get("wobjectId")." order by sequenceNumber");
        while (%data = $sth->hash) {
                if ($session{var}{adminOn}) {
                        $segment = deleteIcon('func=deleteFeature&wid='.$_[0]->get("wobjectId").'&fid='.$data{Product_featureId})
                                .editIcon('func=editFeature&wid='.$_[0]->get("wobjectId").'&fid='.$data{Product_featureId})
                                .moveUpIcon('func=moveFeatureUp&wid='.$_[0]->get("wobjectId").'&fid='.$data{Product_featureId})
                                .moveDownIcon('func=moveFeatureDown&wid='.$_[0]->get("wobjectId").'&fid='.$data{Product_featureId});
                }
		push(@featureloop,{feature=>$data{feature},featureId=>$data{Product_featureId},controls=>$segment});
        }
        $sth->finish;
	$var{feature_loop} = \@featureloop;

	#---benefits 
        if ($session{var}{adminOn}) {
        	$var{addBenefit} = '<a href="'.WebGUI::URL::page('func=editBenefit&fid=new&wid='
                	.$_[0]->get("wobjectId")).'">'.WebGUI::International::get(55,$namespace).'</a><p/>';
        }
        $sth = WebGUI::SQL->read("select benefit,Product_benefitId from Product_benefit where wobjectId="
		.$_[0]->get("wobjectId")." order by sequenceNumber");
        while (%data = $sth->hash) {
                if ($session{var}{adminOn}) {
                        $segment = deleteIcon('func=deleteBenefit&wid='.$_[0]->get("wobjectId").'&bid='.$data{Product_benefitId})
                                .editIcon('func=editBenefit&wid='.$_[0]->get("wobjectId").'&bid='.$data{Product_benefitId})
                                .moveUpIcon('func=moveBenefitUp&wid='.$_[0]->get("wobjectId").'&bid='.$data{Product_benefitId})
                                .moveDownIcon('func=moveBenefitDown&wid='.$_[0]->get("wobjectId").'&bid='.$data{Product_benefitId});
                }
		push(@benefitloop,{benefit=>$data{benefit},benefitId=>$data{Product_benefitId},controls=>$segment});
        }
        $sth->finish;
	$var{benefit_loop} = \@benefitloop;

	#---specifications 
        if ($session{var}{adminOn}) {
        	$var{addSpecification} = '<a href="'.WebGUI::URL::page('func=editSpecification&sid=new&wid='
                	.$_[0]->get("wobjectId")).'">'.WebGUI::International::get(35,$namespace).'</a><p/>';
        }
        $sth = WebGUI::SQL->read("select name,value,units,Product_specificationId from Product_specification 
		where wobjectId=".$_[0]->get("wobjectId")." order by sequenceNumber");
        while (%data = $sth->hash) {
                if ($session{var}{adminOn}) {
                        $segment = deleteIcon('func=deleteSpecification&wid='.$_[0]->get("wobjectId").'&sid='.$data{Product_specificationId})
                                .editIcon('func=editSpecification&wid='.$_[0]->get("wobjectId").'&sid='.$data{Product_specificationId})
                                .moveUpIcon('func=moveSpecificationUp&wid='.$_[0]->get("wobjectId").'&sid='.$data{Product_specificationId})
                                .moveDownIcon('func=moveSpecificationDown&wid='.$_[0]->get("wobjectId").'&sid='.$data{Product_specificationId});
                }
		push(@specificationloop,{specificationId=>$data{Product_specificationId},
			controls=>$segment,specification=>$data{value},units=>$data{units},label=>$data{name}});
        }
        $sth->finish;
	$var{specification_loop} = \@specificationloop;

	#---accessories 
        if ($session{var}{adminOn}) {
        	$var{addaccessory} = '<a href="'.WebGUI::URL::page('func=addAccessory&wid='
                	.$_[0]->get("wobjectId")).'">'.WebGUI::International::get(36,$namespace).'</a><p/>';
        }
        $sth = WebGUI::SQL->read("select wobject.title,page.urlizedTitle,Product_accessory.accessoryWobjectId 
		from Product_accessory,wobject,page 
		where Product_accessory.wobjectId=".$_[0]->get("wobjectId")." 
		and Product_accessory.accessoryWobjectId=wobject.wobjectId 
		and wobject.pageId=page.pageId order by Product_accessory.sequenceNumber");
        while (%data = $sth->hash) {
                if ($session{var}{adminOn}) {
                        $segment = deleteIcon('func=deleteAccessory&wid='.$_[0]->get("wobjectId").'&aid='.$data{accessoryWobjectId})
                                .moveUpIcon('func=moveAccessoryUp&wid='.$_[0]->get("wobjectId").'&aid='.$data{accessoryWobjectId})
                                .moveDownIcon('func=moveAccessoryDown&wid='.$_[0]->get("wobjectId").'&aid='.$data{accessoryWobjectId});
                }
		push(@accessoryloop,{URL=>WebGUI::URL::gateway($data{urlizedTitle}),title=>$data{title},
			accessory=>'<a href="'.WebGUI::URL::gateway($data{urlizedTitle}).'">'.$data{title}.'</a>',
			controls=>$segment});
        }
        $sth->finish;
	$var{accessory_loop} = \@accessoryloop;

	#---related
        if ($session{var}{adminOn}) {
        	$var{addrelatedproduct} = '<a href="'.WebGUI::URL::page('func=addRelated&wid='
			.$_[0]->get("wobjectId")).'">'.WebGUI::International::get(37,$namespace).'</a><p/>';
	}
	$sth = WebGUI::SQL->read("select wobject.title,page.urlizedTitle,Product_related.relatedWobjectId 
		from Product_related,wobject,page 
		where Product_related.wobjectId=".$_[0]->get("wobjectId")." 
		and Product_related.relatedWobjectId=wobject.wobjectId 
		and wobject.pageId=page.pageId order by Product_related.sequenceNumber");
        while (%data = $sth->hash) {
                if ($session{var}{adminOn}) {
                        $segment = deleteIcon('func=deleteRelated&wid='.$_[0]->get("wobjectId").'&rid='.$data{relatedWobjectId})
                                .moveUpIcon('func=moveRelatedUp&wid='.$_[0]->get("wobjectId").'&rid='.$data{relatedWobjectId})
                                .moveDownIcon('func=moveRelatedDown&wid='.$_[0]->get("wobjectId").'&rid='.$data{relatedWobjectId});
                }
                $segment .= '&middot;<a href="'.WebGUI::URL::gateway($data{urlizedTitle}).'">'.$data{title}.'</a><br>';
                push(@relatedloop,{URL=>WebGUI::URL::gateway($data{urlizedTitle}),title=>$data{title},
                        specification=>'<a href="'.WebGUI::URL::gateway($data{urlizedTitle}).'">'.$data{title}.'</a>',
                        controls=>$segment});
        }
        $sth->finish;
	$var{relatedproduct_loop} = \@relatedloop;
        return $_[0]->processMacros($_[0]->processTemplate($_[0]->get("templateId"),\%var));
}




1;

