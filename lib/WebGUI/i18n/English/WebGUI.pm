package WebGUI::i18n::English::WebGUI;

our $I18N = {
	'559' => {
		message => q|Run On Registration|,
		lastUpdated => 1031514049
	},

	'1049' => {
		message => q|Content Filter ID|,
		lastUpdated => 1066418840
	},

	'127' => {
		message => q|Company URL|,
		lastUpdated => 1031514049
	},

	'32' => {
		message => q|Friday|,
		lastUpdated => 1031514049
	},

	'443' => {
		message => q|Home Information|,
		lastUpdated => 1031514049
	},

	'118' => {
		message => q|Anonymous Registration|,
		lastUpdated => 1031514049
	},

	'71' => {
		message => q|Recover password|,
		lastUpdated => 1031514049
	},

	'959' => {
		message => q|Empty system clipboard.|,
		lastUpdated => 1052850265
	},

	'882' => {
		message => q|Editor Mode|,
		lastUpdated => 1044705246
	},

	'1065' => {
		message => q|Forum Post Form Template|,
		lastUpdated => 1066581759
	},

	'358' => {
		message => q|Left Column|,
		lastUpdated => 1031514049
	},

	'331' => {
		message => q|Work State|,
		lastUpdated => 1031514049
	},

	'1050' => {
		message => q|Search For|,
		lastUpdated => 1066418903
	},

	'737' => {
		message => q|8 Master|,
		lastUpdated => 1033836698
	},

	'560' => {
		message => q|Approved|,
		lastUpdated => 1031514049
	},

	'580' => {
		message => q|Your message has been denied.|,
		lastUpdated => 1031514049
	},

	'767' => {
		message => q|Collateral Id|,
		lastUpdated => 1036892929
	},

	'798' => {
		message => q|Page Title|,
		lastUpdated => 1036978688
	},

	'1031' => {
		message => q|Forum Template|,
		lastUpdated => 1066034528
	},

	'1020' => {
		message => q|Rating|,
		lastUpdated => 1065280882
	},

	'84' => {
		message => q|Group Name|,
		lastUpdated => 1031514049
	},

	'512' => {
		message => q|Go to next thread|,
		lastUpdated => 1065280309
	},

	'437' => {
		message => q|Statistics|,
		lastUpdated => 1031514049,
                context => q|Title of the statistics viewer for the admin console.|
	},

	'463' => {
		message => q|Text Area Rows|,
		lastUpdated => 1031514049
	},

	'517' => {
		message => q|Turn Admin Off!|,
		lastUpdated => 1031514049
	},

	'451' => {
		message => q|is required.|,
		lastUpdated => 1031514049
	},

	'454' => {
		message => q|Last Updated|,
		lastUpdated => 1031514049
	},

	'846' => {
		message => q|These macros are mainly useful in maintaining styles in WebGUI.
<p/>

<b>&#94;AdminBar;</b><br>
<b>&#94;AdminBar(<i>custom template ID</i>);</b><br>
Places the administrative tool bar on the page. Omitting this macro will prevent you from adding content, pasting
content from the clipboard, accessing the help system and other administrative functions.
<p>
The macro takes up to one optional argument, an alternate template in the Macro/AdminBar namespace for generating the AdminBar.  The following variables are available in the template:

<p/>
<b>packages.label</b><br/>
The internationalized label for adding packages.

<p/>
<b>packages.canAdd</b><br/>
A boolean indicating whether the current user can add packages.

<p/>
<b>addContent.label</b><br/>
The internationalized label for adding content.

<p/>
<b>contenttypes_loop</b><br/>
The loop containing different types of content to add

<blockquote>
<p/>
<b>contenttype.label</b><br/>
The internationalized label for this content type.

<p/>
<b>contenttype.url</b><br/>
The URL for adding an instance of this content type.

</blockquote>

<p/>
<b>addpage.label</b><br/>
The internationalized label for adding a page.

<p/>
<b>addpage.url</b><br/>
The URL for adding a page.

<p/>
<b>clipboard.label</b><br/>
The internationalized label for the clipboard.

<p/>
<b>clipboard_loop</b><br/>
The loop containing a list of items in the clipboard.

<blockquote>
<p/>
<b>clipboard.label</b><br/>
The label for this item in the clipboard.

<p/>
<b>clipboard.url</b><br/>
The URL for pasting this clipboard item onto the current page.

</blockquote>

<p/>
<b>admin.label</b><br/>
The internationalized label for administrative functions.

<p/>
<b>admin_loop</b><br/>
The loop containing a list of administrative functions, such as turning off admin mode or
validating the current page.

<blockquote>
<p/>
<b>admin.label</b><br/>
The label for this item in the clipboard.

<p/>
<b>admin.url</b><br/>
The URL for executing this admin function.

</blockquote>

<p/>
 The <i>.adminBar</i> style sheet class is tied to the default template for this macro.

<b>&#94;c; - Company Name</b><br>
The name of your company specified in the settings by your Administrator.
<p>


<b>&#94;e; - Company Email Address</b><br>
The email address for your company specified in the settings by your Administrator.
<p>

<b>&#94;Extras;</b><br>
Returns the path to the WebGUI "extras" folder, which contains things like WebGUI icons.
<p>

<b>&#94;JavaScript();</b><br>
This macro allows you to set a javascript in the head section of the page. Just pass in the URL to the javascript file.
<p>

<b>&#94;LastModified;</b><br>
<b>&#94;LastModified(<i>"text"</i>,<i>"date format"</i>);</b><br>
Displays the date that the current page was last modified based upon the wobjects on the page. By default, the date is displayed based upon the user's date preferences. Optionally, it can take two parameters. The first is text to display before the date. The second is a date format string (see the date macro, &#94;D;, for details.
<p>
<i>Example:</i> &#94;LastModified("Updated: ","%c %D, %y");
<p>


<b>&#94;PageTitle;</b><br>
Displays the title of the current page.
<p>

<B>NOTE:</b> If you begin using admin functions or the in-depth functions of any wobject, the page title will become a link that will quickly bring you back to the page.
<p>

<b>&#94;r; - Make Page Printable</b><br>
<b>&#94;r(<i>link text</i>)</b><br>
<b>&#94;r("",<i>custom style name</i>)</b><br>
<b>&#94;r("",<i>custom style name</i>,<i>custom template name</i>)</b><br>
Creates a link to alter the style from a page to make it printable.

<p>

The macro takes up to three arguments.  The first argument allows you to replace the default internationalized link text like this <b>&#94;r("Print Me!");</b>.  If this argument is the string "linkonly", then only the URL to make the page printable will be returned and nothing more.  If you wish to use the internationalized label but need to use multiple arguments to change the printable style or template, then use the empty string.

<p>

Normally, the default style to make the page printable is the "Make Page Printable" style.  The second argument specifies that a different style than the default be used to make the page printable: <b>&#94;r("Print!","WebGUI");</b>.

<p>

The third argument allows a different template be used to generate the HTML code for presenting the link and text, by specifying the name of the template.  The following variables are available in the template:

<p/>
<b>printable.url</b><br/>
The URL to make the page printable.
<p/>
<b>printable.text</b><br/>
The translated label for the printable link, or the text that you supply to the macro.

<p>

<b>NOTES:</b>The <i>.makePrintableLink</i> style sheet class is tied to the default template for this macro.
<p>


<b>&#94;RootTitle;</b><br>
Returns the title of the root of the current page. For instance, the main root in WebGUI is the "Home" page. Many advanced sites have many roots and thus need a way to display to the user which root they are in.
<p>

<b>&#94;StyleSheet();</b><br>
This macro allows you to set a cascading style sheet in the head section of the page. Just pass in the URL to the CSS file.
<p>

<b>&#94;Spacer(<i>"width"</i>,<i>"height"</i>);</b><br>
Create a spacer in your layout. Great for creating blocks of color with divs and tables. It takes two parameters, width and height.
<p>
<i>Example:</i> &#94;Spacer("100","50");
<p>

<b>&#94;RawHeadTags(<i>"header tags"</i>);</b><br>
This macro allows you to set some arbitrary tags in the head section of the page. Just pass in the text.
<p>

<b>&#94;u; - Company URL</b><br>
The URL for your company specified in the settings by your Administrator.
<p>


|,
		lastUpdated => 1103785706,
	},

	'1021' => {
		message => q|Rate Message|,
		lastUpdated => 1065356764
	},

	'31' => {
		message => q|Thursday|,
		lastUpdated => 1031514049
	},

	'578' => {
		message => q|You have a pending message to approve.|,
		lastUpdated => 1031514049
	},

	'934' => {
		message => q|Creating and editing themes is a fairly simple process. First you set up some basic properties for the theme, and then you start adding components to the theme. 
<p>
The basic properties of a theme cannot be changed by anyone except the site that the theme was created on. The following are the definitions of the basic properties of a theme:
<p>
<b>Theme ID</b><br>
The unique ID for this theme within this WebGUI site. This ID will change if this theme is imported into another site.
<p>

<b>Theme Name</b><br>
This is the unique name of the theme. It must be unique in every site that the theme will be imported into. This name will not change across sites.
<p>

<b>Theme Designer</b><br>
The name of the person or company that created this theme. 
<p>

<b>Designer URL</b><br>
The URL of the web site for this theme's designer. If you are in the business of creating themes for WebGUI, then this is your place to attract attention to your offerings.
<p>

|,
		lastUpdated => 1050430737
	},

	'978' => {
		message => q|User added successfully.|,
		lastUpdated => 1053804577
	},

	'728' => {
		message => q|Are you certain you wish to delete this file?|,
		lastUpdated => 1031514049
	},

	'float' => {
		message => q|Decimal|,
		lastUpdated => 1089039511
	},

	'948' => {
		message => q|Clipboard|,
		lastUpdated => 1099360884 
	},

	'378' => {
		message => q|User ID|,
		lastUpdated => 1031514049
	},

	'325' => {
		message => q|Home State|,
		lastUpdated => 1031514049
	},

	'29' => {
		message => q|Tuesday|,
		lastUpdated => 1031514049
	},

	'889' => {
		message => q|Style Sheets, Tabs|,
		lastUpdated => 1046067380
	},

	'350' => {
		message => q|Completed|,
		lastUpdated => 1031514049
	},

	'572' => {
		message => q|Approve|,
		lastUpdated => 1031514049
	},

	'968' => {
		message => q|Clipboard, Empty|,
		lastUpdated => 1052850265
	},

	'675' => {
		message => q|Search Engine, Using|,
		lastUpdated => 1038888957
	},

	'540' => {
		message => q|Karma Per Login|,
		lastUpdated => 1031514049
	},

	'58' => {
		message => q|I already have an account.|,
		lastUpdated => 1031514049
	},

	'684' => {
		message => q|Template, Add/Edit|,
		lastUpdated => 1038890615
	},

	'15' => {
		message => q|January|,
		lastUpdated => 1031514049
	},

	'527' => {
		message => q|Default Home Page|,
		lastUpdated => 1031514049
	},

	'431' => {
		message => q|IP Address|,
		lastUpdated => 1031514049
	},

	'861' => {
		message => q|Make profile public?|,
		lastUpdated => 1043879954
	},

	'337' => {
		message => q|Homepage URL|,
		lastUpdated => 1031514049
	},

	'101' => {
		message => q|Are you certain that you wish to delete this page, its content, and all items under it?|,
		lastUpdated => 1031514049
	},

	'340' => {
		message => q|Female|,
		lastUpdated => 1031514049
	},

	'76' => {
		message => q|That email address is not in our databases.|,
		lastUpdated => 1031514049
	},

	'311' => {
		message => q|Allow home information?|,
		lastUpdated => 1031514049
	},

	'62' => {
		message => q|save|,
		lastUpdated => 1031514049
	},

	'982' => {
		message => q|Add a database link.|,
		lastUpdated => 1056151382
	},

	'833' => {
		message => q|File, Add/Edit|,
		lastUpdated => 1038871497
	},

	'139' => {
		message => q|No|,
		lastUpdated => 1031514049
	},

	'825' => {
		message => q|Template, Language|,
		lastUpdated => 1038865669
	},

	'917' => {
		message => q|Add a theme component.|,
		lastUpdated => 1050232824
	},

	'926' => {
		message => q|This theme was created with a newer version of WebGUI than is installed on your system. You must upgrade before installing this theme.|,
		lastUpdated => 1050264990
	},

	'859' => {
		message => q|Signature|,
		lastUpdated => 1043879866
	},

	'1083' => {
		message => q|New Content|,
		lastUpdated => 1076866510
	},

	'739' => {
		message => q|UI Level|,
		lastUpdated => 1033832377
	},

	'966' => {
		message => q|Are you certain that you wish to permanently purge/delete this item from the trash?|,
		lastUpdated => 1101775259
	},

	'992' => {
		message => q|Title|,
		lastUpdated => 1056151382
	},

	'418' => {
		message => q|Filter Content|,
		lastUpdated => 1046604931
	},

	'933' => {
		message => q|Theme, Edit|,
		lastUpdated => 1050430737
	},

	'758' => {
		message => q|Add a folder.|,
		lastUpdated => 1036892705
	},

	'783' => {
		message => q|Type|,
		lastUpdated => 1036954378
	},

	'706' => {
		message => q|Hour(s)|,
		lastUpdated => 1031514049
	},

	'168' => {
		message => q|Edit User|,
		lastUpdated => 1031514049
	},

	'135' => {
		message => q|SMTP Server|,
		lastUpdated => 1031514049
	},

	'14' => {
		message => q|View pending submissions.|,
		lastUpdated => 1031514049
	},

	'348' => {
		message => q|Name|,
		lastUpdated => 1031514049
	},

	'145' => {
		message => q|WebGUI Build Version|,
		lastUpdated => 1031514049
	},

	'49' => {
		message => q|Click here to log out.|,
		lastUpdated => 1031514049
	},

	'834' => {
		message => q|You can upload any kind of file to the repository to be used later.
<p/>

<b>Name</b><br/>
Give this file a unique name that you can use to retrieve it later.
<p/>

<b>Organize in Folder</b><br/>
Which collateral folder should hold this file?
<p/>

<b>File</b><br/>
Select a file from your hard drive to upload.
<p/>|,
		lastUpdated => 1038871497
	},

	'772' => {
		message => q|Edit File|,
		lastUpdated => 1036893140
	},

	'993' => {
		message => q|DSN|,
		lastUpdated => 1056151382
	},

	'627' => {
		message => q|Profiles are used to extend the information of a particular user. In some cases profiles are important to a site, in others they are not. The profiles system is completely extensible. You can add as much information to the users profile as you like.
<p>

|,
		lastUpdated => 1031514049
	},

	'715' => {
		message => q|Redirect URL|,
		lastUpdated => 1031514049
	},

	'23' => {
		message => q|September|,
		lastUpdated => 1031514049
	},

	'388' => {
		message => q|Upload Date|,
		lastUpdated => 1031514049
	},

	'364' => {
		message => q|Search|,
		lastUpdated => 1031514049
	},

	'653' => {
		message => q|Page, Delete|,
		lastUpdated => 1031514049
	},

	'1068' => {
		message => q|The following variables are available in the search template.
<p>

<b>callback.url</b><br>
The url that links back to the calling object such as an Article or User Submission System.
<p>

<b>callback.label</b><br>
The default label for callback.url.
<p>

<b>form.begin</b><br>
The search form header.
<p>

<b>search.label</b><br>
The default label for the search page.
<p>

<b>all.label</b><br>
The default label for all.form.
<p>

<b>all.form</b><br>
The form element for searching based on all words.
<p>

<b>exactphrase.label</b><br>
The default label for exactphrase.form.
<p>

<b>exactphrase.form</b><br>
The form element for searching based on an exact phrase.
<p>

<b>without.label</b><br>
The default label for without.form.
<p>

<b>without.form</b><br>
The form element for searching based on words that cannot be found in the text.
<p>

<b>atleastone.label</b><br>
The default label for atleastone.form.
<p>

<b>atleastone.form</b><br>
The form element for searching where at least one of the words must exist in the text.
<p>

<b>results.label</b><br>
The default label for results.form.
<p>

<b>results.form</b><br>
The form element for selecting how many results per page should be returned.
<p>

<b>form.search</b><br>
The search button.
<p>

<b>form.end</b><br>
The form footer.
<p>

<b>thread.list.url</b><br>
A url that goes back to the thread list (aka forum).
<p>

<b>thread.list.label</b><br>
The default label for thread.list.url.
<p>

<b>post.subject.label</b><br>
The default label for the subject column.
<p>

<b>post.date.label</b><br>
The default label for the date column.
<p>

<b>post.user.label</b><br>
The default label for the author column.
<p>

<b>post_loop</b><br>
A loop containing all of the search results.
<p>

<blockquote>

<b>post.subject</b><br>
The post subject.
<p>

<b>post.url</b><br>
The url to view the post.
<p>

<b>post.epoch</b><br>
The epoch date of the post.
<p>

<b>post.date</b><br>
The human readable date of the post.
<p>

<b>post.time</b><br>
The human readable time of the post.
<p>

<b>post.user.id</b><br>
The userId of the poster.
<p>

<b>post.user.name</b><br>
The username of the poster.
<p>

<b>post.user.alias</b><br>
The current alias of the poster.
<p>

<b>post.user.profile</b><br>
The url of the poster's profile.
<p>

</blockquote>

<p>

<b>firstpage</b><br>
A link to the first page in a multi-page listing.
<p>

<b>lastpage</b><br>
A link to the last page in a multi-page listing.
<p>

<b>nextpage</b><br>
A link to the next page in a multi-page listing.
<p>

<b>pagelist</b><br>
A series of links to every page in a multi-page listing.
<p>

<b>previouspage</b><br>
A link to the previous page in a multi-page listing.
<p>

<b>multiplepages</b><br>
A conditional indicating whether there are multiple pages or not.
<p>

<b>numberOfPages</b><br>
The number of pages in a multiple page listing.
<p>

<b>pageNumber</b><br>
The number of the current page in a multi-page listing.
<p>

|,
		lastUpdated => 1099614588
	},

	'950' => {
		message => q|Empty clipboard.|,
		lastUpdated => 1052850265
	},

	'486' => {
		message => q|Data Type|,
		lastUpdated => 1031514049
	},

	'1025' => {
		message => q|Add edit stamp to posts?|,
		lastUpdated => 1031514049
	},

	'509' => {
		message => q|Discussion Layout|,
		lastUpdated => 1031514049
	},

	'160' => {
		message => q|Date Submitted|,
		lastUpdated => 1031514049
	},

	'976' => {
		message => q|Add Users|,
		lastUpdated => 1053800614
	},

	'8' => {
		message => q|View page not found.|,
		lastUpdated => 1031514049
	},

	'367' => {
		message => q|Expire Offset|,
		lastUpdated => 1044126611
	},

	'716' => {
		message => q|Login|,
		lastUpdated => 1031514049
	},

	'1000' => {
		message => q|<p>
Database Links enable a WebGUI administrator to add commonly used databases for use in SQL Reports.  This frees the SQL Report author from having to know or enter a DSN, user, or password.<br>
<br>
Be aware that any database links you create here will be available to all content authors.  While they will not be able to see the database connection info, they will be able to execute any select, show, or describe commands on the database.
<p>|,
		lastUpdated => 1056151382
	},

	'940' => {
		message => q|Open in new window?|,
		lastUpdated => 1050438829
	},

	'43' => {
		message => q|Are you certain that you wish to delete this content?|,
		lastUpdated => 1031514049
	},

	'1061' => {
		message => q|These are the template variables for the thread template.
<p>

<b>callback.url</b><br>
The url to the calling object such as an article or a user submission.
<p>

<b>callback.label</b><br>
The default label for callback.url
<p>

<b>user.canpost</b><br>
A conditional indicating whether the current user can post a new message.
<p>

<b>user.isVisitor</b><br>
A conditional indicating whether the current user is a visitor.
<p>

<b>user.isModerator</b><br>
A conditional indicating whether the current user is a moderator.
<p>

<b>user.isSubscribed</b><br>
A conditional indicating whether the current user is subscribed to this thread.
<p>

<b>thread.layout.nested.label</b><br>
The default label for thread.layout.nested.url.
<p>

<b>thread.layout.nested.url</b><br>
A url that will change the layout of the thread to nested.
<p>

<b>thread.layout.flat.url</b><br>
A url that will change the layout of the thread to flat.
<p>

<b>thread.layout.flat.label</b><br>
The default label for thread.layout.flat.url.
<p>

<b>thread.layout.threaded.label</b><br>
The default label for thread.layout.threaded.url.
<p>

<b>thread.layout.threaded.url</b><br>
A url that will change the layout of the thread to threaded.
<p>

<b>thread.layout.isThreaded</b><br>
A conditional indicating whether the thread layout is threaded.
<p>

<b>thread.layout.isNested</b><br>
A conditional indicating whether the thread layout is nested.
<p>

<b>thread.layout.isFlat</b><br>
A conditional indicating whether the thread layout is flat.
<p>

<b>thread.subscribe.url</b><br>
A url that will subscribe the current user to this thread.
<p>

<b>thread.subscribe.label</b><br>
The default label for thread.subscribe.url.
<p>

<b>thread.unsubscribe.url</b><br>
A url that will unsubscribe the current user from this thread.
<p>

<b>thread.unsubscribe.label</b><br>
The default label for thread.unsubscribe.url.
<p>

<b>thread.isSticky</b><br>
A conditional indicating whether the thread is sticky.
<p>

<b>thread.stick.url</b><br>
A url that will make this thread sticky.
<p>

<b>thread.stick.label</b><br>
The default label for thread.stick.url.
<p>

<b>thread.unstick.url</b><br>
A url that will make a sticky thread unstick.
<p>

<b>thread.unstick.label</b><br>
The default label for thread.unstick.url.
<p>

<b>thread.isLocked</b><br>
A conditional indicating whether this thread is locked.
<p>

<b>thread.lock.url</b><br>
A url that will lock this thread.
<p>

<b>thread.lock.label</b><br>
The default label for thread.lock.url.
<p>

<b>thread.unlock.url</b><br>
A url that will unlock this thread.
<p>

<b>thread.unlock.label</b><br>
The default label for thread.unlock.url.
<p>

<b>post_loop</b><br>
A loop containing all the posts in this thread.
<p>

<blockquote>

<b>post.indent_loop</b><br>
A loop to be used for indenting.
<p>
<blockquote>
<b>depth</b><br>
An integer indicating the depth. Not really useful, just hear to fill out the loop.
</blockquote>
<p>

<b>post.indent.depth</b><br>
An integer indicating how many levels deep this post is.
<p>

<b>post.isCurrent</b><br>
A conditional indicating whether this post is the one selected for viewing by the user.
<p>

<b>NOTE:</b> All of the variables from the post template are also available here.

</blockquote>

<p>

<b>thread.subject.label</b><br>
The default label for subjects.
<p>

<b>thread.date.label</b><br>
The default label for dates.
<p>

<b>thread.user.label</b><br>
The default label for authors.
<p>

<b>thread.new.url</b><br>
A url to create a new url.
<p>

<b>thread.new.label</b><br>
The default label for thread.new.url.
<p>

<b>thread.previous.url</b><br>
A url that will display the previous thread.
<p>

<b>thread.previous.label</b><br>
The default label for thread.previous.url.
<p>

<b>thread.next.url</b><br>
A url that will display the next thread.
<p>

<b>thread.next.label</b><br>
The default label for thread.next.url.
<p>

<b>thread.list.url</b<br>
A url to take the user back to the thread list (aka the forum).
<p>

<b>thread.list.label</b><br>
The default label for thread.list.url.
<p>

<b>forum.title</b><br>
The title of this forum as passed by the calling object.
<p>

<b>forum.description</b><br>
The description of this forum as passed by the calling object.
<p>

|,
		lastUpdated => 1099613369
	},

	'485' => {
		message => q|Boolean (Checkbox)|,
		lastUpdated => 1031514049
	},

	'391' => {
		message => q|Delete attached file.|,
		lastUpdated => 1031514049
	},

	'743' => {
		message => q|You must specify a valid email address in order to attempt to recover your password.|,
		lastUpdated => 1035246389
	},

	'778' => {
		message => q|Folder Description|,
		lastUpdated => 1036906132
	},

	'685' => {
		message => q|Template, Delete|,
		lastUpdated => 1038791020
	},

	'21' => {
		message => q|July|,
		lastUpdated => 1031514049
	},

	'523' => {
		message => q|Notification|,
		lastUpdated => 1031514049
	},

	'943' => {
		message => q|Checkbox|,
		lastUpdated => 1051464272
	},

	'460' => {
		message => q|Time Offset|,
		lastUpdated => 1031514049
	},

	'119' => {
		message => q|Authentication Method (default)|,
		lastUpdated => 1031514049
	},

	'453' => {
		message => q|Date Created|,
		lastUpdated => 1031514049
	},

	'324' => {
		message => q|Home City|,
		lastUpdated => 1031514049
	},

	'244' => {
		message => q|Author|,
		lastUpdated => 1031514049
	},

	'637' => {
		message => q|<b>First Name</b><br>
The given name of this user.
<p>

<b>Middle Name</b><br>
The middle name of this user.
<p>

<b>Last Name</b><br>
The surname (or family name) of this user.
<p>

<b>Email Address</b><br>
The user's email address. This must only be specified if the user will partake in functions that require email.
<p>

<b>ICQ UIN</b><br>
The <a href="http://www.icq.com/">ICQ</a> UIN is the "User ID Number" on the ICQ network. ICQ is a very popular instant messaging platform.
<p>

<b>AIM Id</b><br>
The account id for the <a href="http://www.aim.com/">AOL Instant Messenger</a> system.
<p>

<b>MSN Messenger Id</b><br>
The account id for the <a href="http://messenger.msn.com/">Microsoft Network Instant Messenger</a> system.
<p>

<b>Yahoo! Messenger Id</b><br>
The account id for the <a href="http://messenger.yahoo.com/">Yahoo! Instant Messenger</a> system.
<p>

<b>Cell Phone</b><br>
This user's cellular telephone number.
<p>

<b>Pager</b><br>
This user's pager telephone number.
<p>

<b>Email To Pager Gateway</b><br>
This user's text pager email address.
<p>

<b>Home Information</b><br>
The postal (or street) address for this user's home.
<p>

<b>Work Information</b><br>
The postal (or street) address for this user's company.
<p>

<b>Gender</b><br>
This user's sex.
<p>

<b>Birth Date</b><br>
This user's date of birth.

<b>Language</b><br>
What language should be used to display system related messages.
<p>

<b>Time Offset</b><br>
A number of hours (plus or minus) different this user's time is from the server. This is used to adjust for time zones.
<p>

<b>First Day Of Week</b><br>
The first day of the week on this user's local calendar. For instance, in the United States the first day of the week is Sunday, but in many places in Europe, the first day of the week is Monday.
<p>

<b>Date Format</b><br>
What format should dates on this site appear in?
<p>

<b>Time Format</b><br>
What format should times on this site appear in? 
<p>

<b>Discussion Layout</b><br>
Should discussions be laid out flat or threaded? Flat puts all replies on one page in the order they were created. Threaded shows the hierarchical list of replies as they were created.
<p>

<b>Inbox Notifications</b><br>
How should this user be notified when they get a new WebGUI message?

|,
		lastUpdated => 1102231342,
	},

	'351' => {
		message => q|Message|,
		lastUpdated => 1031514049
	},

	'1040' => {
		message => q|Lock|,
		lastUpdated => 1066073923
	},

	'999' => {
		message => q|Database Link, Delete|,
		lastUpdated => 1056151382
	},

	'488' => {
		message => q|Default Value(s)|,
		lastUpdated => 1031514049
	},

	'61' => {
		message => q|Update Account Information|,
		lastUpdated => 1031514049
	},

	'1012' => {
		message => q|Lock this thread?|,
		lastUpdated => 1060433963
	},

	'835' => {
		message => q|Snippet, Add/Edit|,
		lastUpdated => 1038871744
	},

	'430' => {
		message => q|Last Page View|,
		lastUpdated => 1031514049
	},

	'536' => {
		message => q|A new user named ^@; has joined the site.|,
		lastUpdated => 1031514049
	},

	'379' => {
		message => q|Group ID|,
		lastUpdated => 1031514049
	},

	'1032' => {
		message => q|Thread Template|,
		lastUpdated => 1066034586
	},

	'901' => {
		message => q|Add a new theme.|,
		lastUpdated => 1050190107
	},

	'1035' => {
		message => q|Notification Template|,
		lastUpdated => 1066034661
	},

	'452' => {
		message => q|Please wait...|,
		lastUpdated => 1031514049
	},

	'342' => {
		message => q|Edit account information.|,
		lastUpdated => 1031514049
	},

	'862' => {
		message => q|This user's profile is not public.|,
		lastUpdated => 1043881275
	},

	'579' => {
		message => q|Your message has been approved.|,
		lastUpdated => 1031514049
	},

	'480' => {
		message => q|Email Address|,
		lastUpdated => 1031514049
	},

	'341' => {
		message => q|Edit profile.|,
		lastUpdated => 1031514049
	},

	'438' => {
		message => q|Your Name|,
		lastUpdated => 1031514049
	},

	'107' => {
		message => q|Security|,
		lastUpdated => 1031514049
	},

	'1056' => {
		message => q|Forum Template|,
		lastUpdated => 1066576831
	},

	'535' => {
		message => q|Group To Alert On New User|,
		lastUpdated => 1031514049
	},

	'87' => {
		message => q|Edit Group|,
		lastUpdated => 1031514049
	},

	'1022' => {
		message => q|Subscribe to discussion|,
		lastUpdated => 1065875027
	},

	'77' => {
		message => q|That account name is already in use by another member of this site. Please try a different username. The following are some suggestions:|,
		lastUpdated => 1031514049
	},

	'683' => {
		message => q|Templates, Manage|,
		lastUpdated => 1050430164
	},

	'444' => {
		message => q|Demographic Information|,
		lastUpdated => 1031514049
	},

	'541' => {
		message => q|Karma Per Post|,
		lastUpdated => 1031514049
	},

	'953' => {
		message => q|Previous Location|,
		lastUpdated => 1052850265
	},

	'39' => {
		message => q|You do not have sufficient privileges to access this page.|,
		lastUpdated => 1031514049
	},

	'64' => {
		message => q|Log out.|,
		lastUpdated => 1031514049
	},

	'558' => {
		message => q|Edit User's Karma|,
		lastUpdated => 1031514049
	},

	'417' => {
		message => q|<h1>Security Violation</h1>You attempted to access a wobject not associated with this page. This incident has been reported.|,
		lastUpdated => 1031514049
	},

	'12' => {
		message => q|Turn admin off.|,
		lastUpdated => 1031514049
	},

	'881' => {
		message => q|None|,
		lastUpdated => 1044705162
	},

	'765' => {
		message => q|Delete this collateral item.|,
		lastUpdated => 1036892866
	},

	'784' => {
		message => q|Thumbnail|,
		lastUpdated => 1036954393
	},

	'312' => {
		message => q|Allow business information?|,
		lastUpdated => 1031514049
	},

	'45' => {
		message => q|No, I made a mistake.|,
		lastUpdated => 1031514049
	},

	'507' => {
		message => q|Edit Template|,
		lastUpdated => 1031514049
	},

	'405' => {
		message => q|Last Page|,
		lastUpdated => 1031514049
	},

	'1002' => {
		message => q|<p>
When you delete a database link, all SQL Reports using that link will stop working.  A list of all affected reports is shown on the confirmation screen.
<p>


As with any delete operation, you are prompted to be sure you wish to proceed with the delete. If you answer yes, the delete will proceed and there is no recovery possible. If you answer no you'll be returned to the prior screen.
<p>
|,
		lastUpdated => 1056151382
	},

	'1084' => {
		message => q|Default|,
		lastUpdated => 1077472740
	},

	'370' => {
		message => q|Edit Grouping|,
		lastUpdated => 1031514049
	},

	'309' => {
		message => q|Allow real name?|,
		lastUpdated => 1031514049
	},

	'762' => {
		message => q|Add a file.|,
		lastUpdated => 1036892774
	},

	'638' => {
		message => q|Templates are used to affect how content is laid out in WebGUI. There are many templates that come with WebGUI, and using the template management system, you can add your own templates to the system to ensure that your site looks <b>exactly</b> how you want it to look. 
|,
		lastUpdated => 1050430164
	},

	'734' => {
		message => q|5 Adept|,
		lastUpdated => 1033836678
	},

	'875' => {
		message => q|A new message has been posted to one of your subscriptions.|,
		lastUpdated => 1065874019
	},

	'1' => {
		message => q|Add content...|,
		lastUpdated => 1031514049
	},

	'116' => {
		message => q|Select "Yes" to change the privileges of all pages and wobjects under this page to these privileges.|,
		lastUpdated => 1056054674
	},

	'144' => {
		message => q|View statistics.|,
		lastUpdated => 1031514049
	},

	'914' => {
		message => q|Image|,
		lastUpdated => 1050232286
	},

	'100' => {
		message => q|Meta Tags|,
		lastUpdated => 1031514049
	},

	'965' => {
		message => q|System Trash|,
		lastUpdated => 1099050265
	},

	'824' => {
		message => q|Email Footer|,
		lastUpdated => 1038708558
	},

	'661' => {
		message => q|File Settings, Edit|,
		lastUpdated => 1031514049
	},

	'1075' => {
		message => q|Database Link|,
		lastUpdated => 1056151382
	},

	'800' => {
		message => q|Unique Visitors|,
		lastUpdated => 1036978829
	},

	'381' => {
		message => q|WebGUI received a malformed request and was unable to continue. Proprietary characters being passed through a form typically cause this. Please feel free to hit your back button and try again.|,
		lastUpdated => 1031514049
	},

	'581' => {
		message => q|Add New Value|,
		lastUpdated => 1031514049
	},

	'906' => {
		message => q|Designer URL|,
		lastUpdated => 1050191766
	},

	'496' => {
		message => q|Editor To Use|,
		lastUpdated => 1031514049
	},

	'605' => {
		message => q|Add Groups|,
		lastUpdated => 1031514049
	},

	'773' => {
		message => q|File|,
		lastUpdated => 1036893165
	},

	'813' => {
		message => q|Groups In This Group|,
		lastUpdated => 1037583186
	},

	'22' => {
		message => q|August|,
		lastUpdated => 1031514049
	},

	'42' => {
		message => q|Please Confirm|,
		lastUpdated => 1031514049
	},

	'759' => {
		message => q|Edit this folder.|,
		lastUpdated => 1036892731
	},

	'851' => {
		message => q|Edit this template.|,
		lastUpdated => 1039926394
	},

	'927' => {
		message => q|Import Theme|,
		lastUpdated => 1050265139
	},

	'399' => {
		message => q|Validate this page.|,
		lastUpdated => 1031514049
	},

	'1073' => {
		message => q|Style Template|,
		lastUpdated => 1070027660
	},

	'436' => {
		message => q|Kill Session|,
		lastUpdated => 1031514049
	},

	'816' => {
		message => q|Status|,
		lastUpdated => 1038431169
	},

	'51' => {
		message => q|Password|,
		lastUpdated => 1031514049
	},

	'456' => {
		message => q|Back to user list.|,
		lastUpdated => 1031514049
	},

	'874' => {
		message => q|Unsubscribe from thread|,
		lastUpdated => 1065876868
	},

	'1062' => {
		message => q|Forum Notification Template|,
		lastUpdated => 1066580520
	},

	'975' => {
		message => q|Users can remove themselves?|,
		lastUpdated => 1053778962
	},

	'493' => {
		message => q|Back to site.|,
		lastUpdated => 1031514049
	},

	'171' => {
		message => q|rich edit|,
		lastUpdated => 1031514049
	},

	'1033' => {
		message => q|Post Template|,
		lastUpdated => 1066034603
	},

	'916' => {
		message => q|Snippet|,
		lastUpdated => 1050232301
	},

	'386' => {
		message => q|Edit Image|,
		lastUpdated => 1031514049
	},

	'796' => {
		message => q|View page statistics.|,
		lastUpdated => 1036978043
	},

	'445' => {
		message => q|Preferences|,
		lastUpdated => 1031514049
	},

	'1026' => {
		message => q|Allow rich edit?|,
		lastUpdated => 1065966219
	},

	'844' => {
		message => q|These macros have to do with users and logins.
<p/>

<b>&#94;a; or &#94;a(); - My Account Link</b><br>
A link to your account information. In addition you can change the link text by creating a macro like this <b>&#94;a("Account Info");</b>.  If you specify "linkonly" in the first parameter then only the URL will be returned. Also, you can specify the name of a template in the Macro/a_account namespace as the second parameter to override the default template.
<p>
The following is a list of variables available in the template:
<p/>
<b>account.url</b><br/>
The URL to the account page.
<p/>
<b>account.text</b><br/>
The translated label for the account link, or the text that you supply to the macro.
<p/>

<b>NOTES:</b> You can also use the special case &#94;a(linkonly); to return only the URL to the account page and nothing more. Also, the .myAccountLink style sheet class is tied to this macro.
<p>


<b>&#94;AdminText();</b><br>
Displays a small text message to a user who is in admin mode. Example: &#94;AdminText("You are in admin mode!");
<p>

<b>&#94;AdminToggle; or &#94;AdminToggle();</b><br>
Places a link on the page which is only visible to content managers and administrators. The link toggles on/off admin mode. You can optionally specify other messages to display like this: &#94;AdminToggle("Edit On","Edit Off"); This macro optionally takes a third parameter that allows you to specify an alternate template name in the Macro/AdminToggle namespace.
<p>
The following variables are available in the template:
<p/>
<b>toggle.url</b><br/>
The URL to activate or deactivate Admin mode.
<p/>
<b>toggle.text</b><br/>
The Internationalized label for turning on or off Admin (depending on the state of the macro), or the text that you supply to the macro.
<p/>


<b>&#94;AOIHits();</b><br>
This macro is for displaying Areas of Interest Hits, which is based on passive profiling
of which wobjects are viewed by users, on a per user basis.  The macro takes two arguments,
a metadata property and metadata value, and returns how many times the current user has
viewed content with that property and value.<br>
&#94;AOIHits(contenttype,sport); would display 99 if this user has looked at content that was tagged "contenttype = sport" 99 times.

<p>
<b>&#94;AOIRank();</b><br>
This macro is for displaying Areas of Interest Rankings, which is based on passive profiling
of which wobjects are viewed most frequently by users, on a per user basis.  The macro
takes up to two arguments, a metadata property and the rank of the metadata value to
be returned.  If the rank is left out, it defaults to 1, the highest rank.<br>
&#94;AOIRank(contenttype); would display "sport" if the current user has looked at content tagged "contenttype = sport" the most.<br>
&#94;AOIRank(contenttype, 2); would return the second highest ranked value for contenttype.
<p>

<b>&#94;CanEditText();</b><br>
Display a message to a user that can edit the current page.
<p>
<i>Example:</i> &#94;CanEditText(&#94;AdminToggle;);
<p>

<b>&#94;EditableToggle; or &#94;EditableToggle();</b><br>
Exactly the same as AdminToggle, except that the toggle is only displayed if the user has the rights to edit the current page. This macro takes up to three parameters. The first is a label for "Turn Admin On", the second is a label for "Turn Admin Off", and the third is the name of a template in the Macro/EditableToggle namespace to replace the default template.
<p>
The following variables are available in the template:
<p/>
<b>toggle.url</b><br/>
The URL to activate or deactivate Admin mode.
<p/>
<b>toggle.text</b><br/>
The Internationalized label for turning on or off Admin (depending on the state of the macro), or the text that you supply to the macro.
<p/>

<p>


<b>&#94;GroupAdd();</b><br>
Using this macro you can allow users to add themselves to a group. The first parameter is the name of the group this user should be added to. The second parameter is a text string for the user to click on to add themselves to this group. The third parameter allows you to specify the name of a template in the Macro/GroupAdd namespace to replace the default template.  These variables are available in the template:
<p/>
<b>group.url</b><br/>
The URL with the action to add the user to the group.
<p/>
<b>group.text</b><br/>
The supplied text string for the user to click on.

<p>
<b>NOTE:</b> If the user is not logged in, or or already belongs to the group, or the group is not set to allow auto adds, then no link will be displayed.
<p>


<b>&#94;GroupDelete();</b><br>
Using this macro you can allow users to delete themselves from a group. The first parameter is the name of the group this user should be deleted from. The second parameter is a text string for the user to click on to delete themselves from this group. The third parameter allows you to specify the name of a template in the Macro/GroupDelete namespace to replace the default template.  These variables are available in the template:
<p/>
<b>group.url</b><br/>
The URL with the action to add the user to the group.
<p/>
<b>group.text</b><br/>
The supplied text string for the user to click on.


<p>
<b>NOTE:</b> If the user is not logged in or the user does not belong to the group, or the group is not set to allow auto deletes, then no link will be displayed.
<p>

<b>&#94;GroupText();</b><br>
Displays a small text message to the user if they belong to the specified group. And you can specify an alternate message to those who are not in the group.
<p>
<i>Example:</i> &#94;GroupText("Visitors","You need an account to do anything cool on this site!","We value our registered users!");
<p>
<b>&#94;L; or &#94;L(); - Login Box</b><br>
A small login form. This macro takes up to three parameters.  The first is used to set the width of the login box: &#94;L(20);. The second sets the message displayed after the user is logged in: &#94;L(20,"Hi &#94;a(&#94;@;);. Click %here% if you wanna log out!");.  Text between percent signs (%) is replaced by a link to the logout operation.  The third parameter is the ID of a template in the Macro/L_loginBox namespace to replace the default template.  The variables below are
available in the template.  Not all of them are required, but variables that will cause the macro to output code that doesn't function properly (like not actually log someone in) are marked with an asterisk '*'
<p/>
<b>user.isVisitor</b><br/>
True if the user is a visitor.
<p/>
<b>customText</b><br/>
The user defined text to display if the user is logged in.
<p/>
<b>hello.label</b><br/>
Internationalized welcome message.
<p/>
<b>customText</b><br/>
The text supplied to the macro to display if the user is logged in.
<p/>
<b>account.display.url</b><br/>
URL to display the account.
<p/>
<b>logout.label</b><br/>
Internationalized logout message.
<p/>
<b>* form.header</b><br/>
Form header.
<p/>
<b>username.label</b><br/>
Internationalized label for "username".
<p/>
<b>* username.form</b><br/>
Form element for the username.
<p/>
<b>password.label</b><br/>
Internationalized label for "password".
<p/>
<b>* password.form</b><br/>
Form element for the password.
<p/>
<b>* form.login</b><br/>
Action to perform when logging in.
<p/>
<b>account.create.url</b><br/>
URL to create an account.
<p/>
<b>account.create.label</b><br/>
Internationalized label for "create an account"
<p/>
<b>* form.footer</b><br/>
Form footer.
<p/>

<b>NOTE:</b> The .loginBox style sheet class is tied to this macro.
<p>

<b>&#94;LoginToggle; or &#94;LoginToggle();</b><br>
Displays a "Login" or "Logout" message depending upon whether the user is logged in or not. You can optionally specify other labels like this: &#94;LoginToggle("Click here to log in.","Click here to log out.");. You can also use the special case &#94;LoginToggle(linkonly); to return only the URL with no label.
<p>
<b>toggle.url</b><br/>
The URL to login or logout.
<p/>
<b>toggle.text</b><br/>
The Internationalized label for logging in or logging out (depending on the state of the macro), or the text that you supply to the macro.
<p>

<b>&#94;@; - Username</b><br>
The username of the currently logged in user.
<p>


<b>&#94;#; - User ID</b><br>
The user id of the currently logged in user.
<p>

|,
		lastUpdated => 1101775299
	},

	'329' => {
		message => q|Work Address|,
		lastUpdated => 1031514049
	},

	'27' => {
		message => q|Sunday|,
		lastUpdated => 1031514049
	},

	'161' => {
		message => q|Submitted By|,
		lastUpdated => 1031514049
	},

	'775' => {
		message => q|Are you certain you wish to delete this folder and move its contents to it's parent folder?|,
		lastUpdated => 1036903002
	},

	'582' => {
		message => q|Leave Blank|,
		lastUpdated => 1031514049
	},

	'919' => {
		message => q|Edit this theme.|,
		lastUpdated => 1050247154
	},

	'746' => {
		message => q|Toolbar Icon Set|,
		lastUpdated => 1036046598
	},

	'534' => {
		message => q|Alert on new user?|,
		lastUpdated => 1031514049
	},

	'400' => {
		message => q|Prevent Proxy Caching|,
		lastUpdated => 1031514049
	},

	'744' => {
		message => q|What next?|,
		lastUpdated => 1035864828
	},

	'20' => {
		message => q|June|,
		lastUpdated => 1031514049
	},

	'888' => {
		message => q|Snippet Preview Length|,
		lastUpdated => 1045312362
	},

	'1011' => {
		message => q|Code|,
		lastUpdated => 1060433339
	},

	'557' => {
		message => q|Description|,
		lastUpdated => 1031514049
	},

	'1019' => {
		message => q|Back to thread list|,
		lastUpdated => 1065280160
	},

	'700' => {
		message => q|Day(s)|,
		lastUpdated => 1031514049
	},

	'475' => {
		message => q|Text|,
		lastUpdated => 1031514049
	},

	'441' => {
		message => q|Email To Pager Gateway|,
		lastUpdated => 1031514049
	},

	'868' => {
		message => q|Send welcome message?|,
		lastUpdated => 1044138691
	},

	'990' => {
		message => q|Edit Database Link|,
		lastUpdated => 1056151382
	},

	'932' => {
		message => q|Themes are a mechanism to quickly install new styles, templates, and collateral into a WebGUI site. They are also great for moving those same items from one site to another.
<p>
<b>TIP:</b> When building a theme, be sure to name the components (styles, templates collateral) in the theme with some name that is unique to the theme. This is useful so that your users can find the components in your theme, as well as to avoid name conflicts.|,
		lastUpdated => 1070027889
	},

	'672' => {
		message => q|Profile Settings, Edit|,
		lastUpdated => 1031514049
	},

	'764' => {
		message => q|Edit this collateral item.|,
		lastUpdated => 1036892856
	},

	'349' => {
		message => q|Latest version available|,
		lastUpdated => 1031514049
	},

	'769' => {
		message => q|Organize in Folder|,
		lastUpdated => 1036893015
	},

	'983' => {
		message => q|Edit this database link.|,
		lastUpdated => 1056151382
	},

	'515' => {
		message => q|Add edit stamp to posts?|,
		lastUpdated => 1031514049
	},

	'853' => {
		message => q|Delete this template.|,
		lastUpdated => 1039926459
	},

	'138' => {
		message => q|Yes|,
		lastUpdated => 1031514049
	},

	'751' => {
		message => q|Become this user.|,
		lastUpdated => 1036864905
	},

	'606' => {
		message => q|Think of pages as containers for content. For instance, if you want to write a letter to the editor of your favorite magazine you'd get out a notepad (or open a word processor) and start filling it with your thoughts. The same is true with WebGUI. Create a page, then add your content to the page.
<p>

<b>Title</b><br>
The title of the page is what your users will use to navigate through the site. Titles should be descriptive, but not very long.
<p>


<b>Menu Title</b><br>
A shorter or altered title to appear in navigation. If left blank this will default to <i>Title</i>.
<p>

<b>URL</b><br>
You may either specify a URL for the asset, or if you leave this blank, a URL based on the <b>Title</b> will be generated.
<p>

<b>Redirect URL</b><br>
When this page is visited, the user will be redirected to the URL specified here. 
<p>
<b>NOTE:</b> The redirects will be disabled while in admin mode in order to make it easier to edit the properties of the page.
<p>


<b>Hide from navigation?</b><br>
Select yes to hide this page from the navigation menus and site maps.
<p>
<B>NOTE:</b> This will not hide the page from the page tree (Administrative functions... &gt; Manage page tree.), only from navigation macros and from site maps.
<p>

<b>Open in new window?</b><br>
Select yes to open this page in a new window. This is often used in conjunction with the <b>Redirect URL</b> parameter.
<p>

<b>Encrypt content?</b><br>
Select yes to serve this page over SSL.
<p>



<b>Language</b><br/>
Choose the default language for this page. All WebGUI generated messages will appear in that language and the character set will be changed to the character set for that language.
<p/>

<P><B>Cache Timeout</B><BR>The amount of time this page should remain cached for registered users. 

<P><B>Cache Timeout (Visitors)</B><BR>The amount of time this page should remain cached for visitors. 

<P><B>NOTE:</B> Page caching is only available if your administrator has installed the Cache::FileCache Perl module. Using page caching can improve site performance by as much as 1000%.&nbsp;


<P><b>Template</b><br>
By default, WebGUI has one big content area to place wobjects. However, by specifying a template other than the default you can sub-divide the content area into several sections.
<p>

<b>Synopsis</b><br>
A short description of a page. It is used to populate default descriptive meta tags as well as to provide descriptions on Site Maps.
<p>

<b>Meta Tags</b><br>
Meta tags are used by some search engines to associate key words to a particular page. You can find a  <a href="http://vancouver-webpages.com/META/mk-metas.html">little utility here</a> that will help you build meta tags if you've never done it before.
<p>

<i>Advanced Users:</i> If you have other things (like JavaScript) you usually put in the  area of your pages, you may put them here as well.
<p>

<b>Use default meta tags?</b><br>
If you don't wish to specify meta tags yourself, WebGUI can generate meta tags based on the page title and your company's name. Check this box to enable the WebGUI-generated meta tags.
<p>


<b>Style</b><br>
By default, when you create a page, it inherits a few traits from its parent. One of those traits is style. Choose from the list of styles if you would like to change the appearance of this page. See <i>Add Style</i> for more details.
<p>

<b>Printable Style</b><br>
This sets the printable style for this page to be something other than the WebGUI Default Printable Style.
<p>

<b>Start Date</b><br>
The date when users may begin viewing this page. Note that before this date only content managers with the rights to edit this page will see it.
<p>

<b>End Date</b><br>
The date when users will stop viewing this page. Note that after this date only content managers with the rights to edit this page will see it.
<p>

<b>Owner</b><br>
The owner of a page is usually the person who created the page. This user always has full edit and viewing rights on the page.
<p>
<b>NOTE:</b> The owner can only be changed by an administrator.
<p>


<b>Who can view?</b><br>
Choose which group can view this page. If you want both visitors and registered users to be able to view the page then you should choose the "Everybody" group.
<p>

<b>Who can edit?</b><br>
Choose the group that can edit this page. The group assigned editing rights can also always view the page.
<p>

<b>Recursively set privileges?</b><br>
You can optionally give the privileges of this page to all pages under this page.
<p>

<b>What next?</b><br/>
If you leave this on the default setting you'll be redirected to the new page after creating it.
<p/>|,
		lastUpdated =>  1102031032,
	},

	'60' => {
		message => q|Are you certain you want to deactivate your account. If you proceed your account information will be lost permanently.|,
		lastUpdated => 1031514049
	},

	'724' => {
		message => q|Your username cannot begin or end with a space.|,
		lastUpdated => 1031879593
	},

	'1067' => {
		message => q|Forum Search Template|,
		lastUpdated => 1066582842
	},

	'432' => {
		message => q|Expires|,
		lastUpdated => 1031514049
	},

	'519' => {
		message => q|I would not like to be notified.|,
		lastUpdated => 1031514049
	},

	'1074' => {
		message => q|Style templates are a special kind of template in WebGUI. They allow you to keep your content separated from the look and feel of your site. The following are the template variables available in style templates:

<p>

<b>body.content</b><br>
The the content on the current page.
<p>

<b>head.tags</b><br>
Tags that WebGUI automatically generates for you so that caching works the way it should, search engines can find you better, and other useful automated functionality. This should go in the &lt;head&gt; &lt;/head&gt; section of your style.

<p>
We suggest using something like this in the &lt;title&gt; &lt;/title&gt; portion of your style:
<p>

&lt;tmpl_var session.page.title&gt; - &lt;tmpl_var session.setting.companyName&gt;

<p>
That particular example will help you get good ranking on search engines.

|,
		lastUpdated => 1102702313,
	},

	'860' => {
		message => q|Make email address public?|,
		lastUpdated => 1043879942
	},

	'346' => {
		message => q|This user is no longer a member of our site. We have no further information about this user.|,
		lastUpdated => 1031514049
	},

	'911' => {
		message => q|Component|,
		lastUpdated => 1050232236
	},

	'1063' => {
		message => q|These are the variables available in the forum notification template.

<p>
<b>notify.subscription.message</b><br>
A message stating that the user is receiving the message because they subscribed to the forum or thread.
<p>

<b>NOTE:</b> The notification template also includes all the variables from the post template.
<p>
|,
		lastUpdated => 1066580520
	},

	'17' => {
		message => q|March|,
		lastUpdated => 1031514049
	},

	'427' => {
		message => q|Styles|,
		lastUpdated => 1031514049
	},

	'677' => {
		message => q|Wobject, Add/Edit|,
		lastUpdated => 1047858650
	},

	'907' => {
		message => q|Are you certain you wish to delete this theme?|,
		lastUpdated => 1050230443
	},

	'82' => {
		message => q|Administrative functions...|,
		lastUpdated => 1031514049
	},

	'333' => {
		message => q|Work Country|,
		lastUpdated => 1031514049
	},

	'895' => {
		message => q|Cache Timeout|,
		lastUpdated => 1056292971
	},

	'323' => {
		message => q|Home Address|,
		lastUpdated => 1031514049
	},

	'856' => {
		message => q|You have no account properties to edit at this time.|,
		lastUpdated => 1040340432
	},

	'69' => {
		message => q|Please contact your system administrator for assistance.|,
		lastUpdated => 1031514049
	},

	'664' => {
		message => q|Wobject, Delete|,
		lastUpdated => 1031514049
	},

	'756' => {
		message => q|Back to group list.|,
		lastUpdated => 1036867726
	},

	'446' => {
		message => q|Work Web Site|,
		lastUpdated => 1031514049
	},

	'352' => {
		message => q|Date Of Entry|,
		lastUpdated => 1031514049
	},

	'1006' => {
		message => q|Encrypt Login?|,
		lastUpdated => 1057208065
	},

	'126' => {
		message => q|Company Email Address|,
		lastUpdated => 1031514049
	},

	'1034' => {
		message => q|Post Form Template|,
		lastUpdated => 1066034620
	},

	'426' => {
		message => q|Login History|,
		lastUpdated => 1031514049,
                context => q|Title of the login history viewer for the admin console.|
	},

	'542' => {
		message => q|Previous..|,
		lastUpdated => 1031514049
	},

	'369' => {
		message => q|Expire Date|,
		lastUpdated => 1031514049
	},

	'961' => {
		message => q|The trash is a special system location where deleted content is temporarily stored. Items in the trash may be managed individually. You may cut an item to the clipboard or permanently delete it by selecting the appropriate icon.  You may also purge/delete all items in the trash by choosing the Empty trash menu option.
<p><b>Title</b><br>The name of the item in the trash.  You may view the item by selecting the title.
<p><b>Type</b><br>The type of content.  For instance, a Page, Article, EventsCalendar, etc.
<p><b>Trash Date</b><br>The date and time the item was added to the trash
<p><b>Previous Location</b><br>The location where the item was previously found.  You may view the previous location by selecting the location.<p><b>Username</b><br>The username of the individual who placed the item in the trash.  This optional field is only visible in shared trash environments or when an administrator is managing the system trash.
<p>Note that when Pages are in the clipboard that their URLs are still active in the WebGUI
system.  If another page with an identical URL is created, the URL of the newly created page
will be modified to make it unique.|,
		lastUpdated => 1101775325,
	},

	'651' => {
		message => q|If you choose to empty your trash, any items contained in it will be lost forever. If you're unsure about a few items, it might be best to cut them to your clipboard before you empty the trash.
<p>

|,
		lastUpdated => 1031514049
	},

	'956' => {
		message => q|Are you certain that you wish to move this item from the clipboard to the trash?|,
		lastUpdated => 1052850265
	},

	'498' => {
		message => q|End Date|,
		lastUpdated => 1031514049
	},

	'483' => {
		message => q|Yes or No|,
		lastUpdated => 1031514049
	},

	'947' => {
		message => q|Use shared clipboard?|,
		lastUpdated => 1052850265
	},

	'810' => {
		message => q|send|,
		lastUpdated => 1037579743
	},

	'372' => {
		message => q|Edit User's Groups|,
		lastUpdated => 1031514049
	},

	'574' => {
		message => q|Deny|,
		lastUpdated => 1031514049
	},

	'170' => {
		message => q|search|,
		lastUpdated => 1031514049
	},

	'33' => {
		message => q|Saturday|,
		lastUpdated => 1031514049
	},

	'920' => {
		message => q|Export this theme.|,
		lastUpdated => 1050247169
	},

	'660' => {
		message => q|Groups, Manage|,
		lastUpdated => 1031514049
	},

	'groups default title' => {
		message => q|Groups, Default|,
		lastUpdated => 1100223171
	},

	'428' => {
		message => q|User (ID)|,
		lastUpdated => 1031514049
	},

	'26' => {
		message => q|December|,
		lastUpdated => 1031514049
	},

	'977' => {
		message => q|Is secondary admin?|,
		lastUpdated => 1053803387
	},

	'99' => {
		message => q|Title|,
		lastUpdated => 1031514049
	},

	'526' => {
		message => q|Remove JavaScript and negate macros.|,
		lastUpdated => 1047838780
	},

	'72' => {
		message => q|recover|,
		lastUpdated => 1031514049
	},

	'566' => {
		message => q|Edit Timeout|,
		lastUpdated => 1031514049
	},

	'806' => {
		message => q|Delete this group.|,
		lastUpdated => 1037579396
	},

	'869' => {
		message => q|Welcome Message|,
		lastUpdated => 1044138730
	},

	'500' => {
		message => q|Page ID|,
		lastUpdated => 1031514049
	},

	'533' => {
		message => q|<b>without</b> the words|,
		lastUpdated => 1031514049
	},

	'359' => {
		message => q|Right Column|,
		lastUpdated => 1031514049
	},

	'918' => {
		message => q|Delete this theme.|,
		lastUpdated => 1050247144
	},

	'108' => {
		message => q|Owner|,
		lastUpdated => 1031514049
	},

	'1001' => {
		message => q|<p>
The following fields make up a Database Link.
<p>

<b>Title</b><br>
A title for the database link.
<p>

<b>DSN</b><br>
<b>D</b>ata <b>S</b>ource <b>N</b>ame is the unique identifier that Perl uses to describe the location of your database. It takes the format of
<blockquote>DBI:[driver]:[database name]:[host].</blockquote>
<p>


<i>Example:</i> DBI:mysql:WebGUI:localhost
<p>

Here are some examples for other databases.<br>
<dl>
<dt><a href="http://search.cpan.org/author/TIMB/DBD-Oracle-1.14/Oracle.pm#CONNECTING_TO_ORACLE">Oracle</a>:</dt>
<dd>DBI:Oracle:SID<br>
DBD::Oracle must be installed.<br>
You must be using mod_perl and configure <b>PerlSetEnv ORACLE_HOME /home/oracle/product/8.1.7</b> in httpd.conf. Without setting ORACLE_HOME, you can connect using DBI:Oracle:host=myhost.com;sid=SID
</dd>

<dt><a href="http://search.cpan.org/author/OYAMA/DBD-PgPP-0.04/PgPP.pm#THE_DBI_CLASS">PostgreSQL</a>:</dt>
<dd>DBI:PgPP:dbname=DBNAME[;host=hOST]<br>
DBD::PgPP must be installed.
</dd>


<dt><a href="http://search.cpan.org/author/MEWP/DBD-Sybase-1.00/Sybase.pm#Specifying_other_connection_specific_parameters">Sybase</a>:</dt>
<dd>DBI:Sybase:[server=SERVERNAME][database=DATABASE]<br>
DBD::Sybase must be installed.<br>
You must be using mod_perl and configure <b>PerlSetEnv SYBASE /opt/sybase/11.0.2</b> in httpd.conf.
</dd>
</dl>

<p>
<b>Database User</b><br>
The username you use to connect to the DSN.
<p>


<b>Database Password</b><br>
The password you use to connect to the DSN.
<p>
|,
		lastUpdated => 1099536266
	},

	'556' => {
		message => q|Amount|,
		lastUpdated => 1031514049
	},

	'717' => {
		message => q|Logout|,
		lastUpdated => 1031514049
	},

	'462' => {
		message => q|Time Format|,
		lastUpdated => 1031514049
	},

	'232' => {
		message => q|no subject|,
		lastUpdated => 1031514049
	},

	'477' => {
		message => q|HTML Area|,
		lastUpdated => 1031514049
	},

	'843' => {
		message => q|User Macros|,
		lastUpdated => 1046656765
	},

	'815' => {
		message => q|The file you tried to upload is too large.|,
		lastUpdated => 1038023800
	},

	'671' => {
		message => q|Wobjects, Using|,
		lastUpdated => 1047858549
	},

	'142' => {
		message => q|Session Timeout|,
		lastUpdated => 1031514049
	},

	'330' => {
		message => q|Work City|,
		lastUpdated => 1031514049
	},

	'632' => {
		message => q|You can add wobjects by selecting from the <I>Add Content</I> pulldown menu. You can edit them by clicking on the "Edit" button that appears directly above an instance of a particular wobject while in Admin mode. 
<P>Almost all wobjects share some properties. Those properties are: 
<P><B>Wobject ID</B><BR>This is the unique identifier WebGUI uses to keep track of this wobject instance. Normal users should never need to be concerned with the Wobject ID, but some advanced users may need to know it for things like SQL Reports. The Wobject ID is not editable.
<P><B>Title</B> The title of the wobject. This is typically displayed at the top of each wobject. 
<P><I>Note:</I> You should always specify a title even if you are going to turn it off (with the next property). This is because the title shows up in the trash and clipboard and you'll want to be able to distinguish which wobject is which. 
<P><B>Display title?</B><BR>Do you wish to display the title you specified? On some sites, displaying the title is not necessary. 
<P><B>Metadata</B><BR>Under the Metadata tab you can set the metadata properties for this content. Metadata must be enabled in the Manage Settings menu.
<P><B>Template Position</B><BR>Template positions range from 0 (zero) to any number. How many are available depends upon the Template associated with this page. The default template has only one template position, others may have more. By selecting a template position, you're specifying where this wobject should be placed within the template. 
<P><B>Start Date</B><BR>On what date should this wobject become visible? Before this date, the wobject will only be displayed to Content Managers. 
<P><B>End Date</B><BR>On what date should this wobject become invisible? After this date, the wobject will only be displayed to Content Managers. <BR><BR><B>Owner</B><BR>The owner of a wobject is usually the person who created the wobject. This user has full edit and viewing rights on the wobject unless privileges to edit the page the wobject appears on are taken away. 
<P><B>NOTE:</B> The owner can only be changed by an administrator. 
<P><B>Who can view?</B><BR>Choose which group can view this wobject. If you want both visitors and registered users to be able to view the&nbsp;wobject then you should choose the "Everybody" group. 
<P><B>Who can edit?</B><BR>Choose the group that can edit this wobject. The group assigned editing rights can also always view the wobject. </P>
<P><B>Description</B><BR>A content area in which you can place as much content as you wish. For instance, even before an FAQ there is usually a paragraph describing what is contained in the FAQ. 
<P></P>|,
		lastUpdated => 1101775352
	},

	'991' => {
		message => q|Database Link ID|,
		lastUpdated => 1056151382
	},

	'167' => {
		message => q|Are you certain you want to delete this user? Be warned that all this user's information will be lost permanently if you choose to proceed.|,
		lastUpdated => 1031514049
	},

	'48' => {
		message => q|Hello|,
		lastUpdated => 1031514049
	},

	'360' => {
		message => q|One Over Three|,
		lastUpdated => 1031514049
	},

	'610' => {
		message => q|See <b>Manage Users</b> for additional details.
<p>

<b>Username</b><br>
Username is a unique identifier for a user. Sometimes called a handle, it is also how the user will be known on the site. (<i>Note:</i> Administrators have unlimited power in the WebGUI system. This also means they are capable of breaking the system. If you rename or create a user, be careful not to use a username already in existence.)
<p>


<b>Password</b><br>
A password is used to ensure that the user is who s/he says s/he is.
<p>

<b>Password Timeout</b><br>
Length of time before this user's password expires, forcing it to be changed
<p>

<b>Allow User to Change Username?</b><br>
Should this user be allowed to change his username?
<p>

<b>Allow User to Change Password?</b><br>
Should this user be allowed to change his password?
<p>

<b>Authentication Method</b><br>
See <i>Edit Settings</i> for details.
<p>


<b>LDAP URL</b><br>
See <i>Edit Settings</i> for details.
<p>


<b>Connect DN</b><br>
The Connect DN is the <b>cn</b> (or common name) of a given user in your LDAP database. It should be specified as <b>cn=John Doe</b>. This is, in effect, the username that will be used to authenticate this user against your LDAP server.
<p>


|,
		lastUpdated => 1101775369,
	},

	'514' => {
		message => q|Views|,
		lastUpdated => 1031514049
	},

	'931' => {
		message => q|Themes, Manage|,
		lastUpdated => 1050437240
	},

	'725' => {
		message => q|Your username cannot be blank.|,
		lastUpdated => 1031879612
	},

	'663' => {
		message => q|Messaging Settings, Edit|,
		lastUpdated => 1044138790
	},

	'513' => {
		message => q|Go to previous thread|,
		lastUpdated => 1065280287
	},

	'groups default body' => {
		message => q|There are several groups built into WebGUI:
<p>

<b>Admins</b><br>
Admins are users who have unlimited privileges within WebGUI. A user should only be added to the admin group if they oversee the system. Usually only one to three people will be added to this group.
<p>

<b>Content Managers</b><br>
Content managers are users who have privileges to add, edit, and delete content from various areas on the site. The content managers group should not be used to control individual content areas within the site, but to determine whether a user can edit content at all. You should set up additional groups to separate content areas on the site.
<p>

<b>Everyone</b><br>
Everyone is a magic group in that no one is ever physically inserted into it, but yet all members of the site are part of it. If you want to open up your site to both visitors and registered users, use this group to do it.
<p>

<b>Export Managers</b><br>
Members of this group are allowed to export pages to disk.
<p>

<b>Package Managers</b><br>
Users that have privileges to add, edit, and delete packages of wobjects and pages to deploy.
<p>

<b>Registered Users</b><br>
When users are added to the system they are put into the registered users group. A user should only be removed from this group if their account is deleted or if you wish to punish a troublemaker.
<p>

<b>Secondary Admins</b><br>
Users in the Secondary Admins group may add new users, but cannot edit users. Also, if 
you are a Secondary Admin for a group, you may modify the membership of that group.
<p>

<b>Style Managers</b><br>
Users that have privileges to edit styles for this site. These privileges do not allow the user to assign styles to a page, just define them to be used.
<p>

<b>Template Managers</b><br>
Users that have privileges to edit templates for this site.
<p>

<b>Theme Managers</b><br>
Users in this group can use the theme manager to create new themes and install themes from other systems.
<p>

<b>Turn Admin On</b><br>
These users are allowed to turn on Admin mode.
<p>

<b>Visitors</b><br>
Visitors are users who are not logged in using an account on the system. Also, if you wish to punish a registered user you could remove him/her from the Registered Users group and insert him/her into the Visitors group.
<p>
|,
		lastUpdated => 1100157165
	},

	'615' => {
		message => q|Groups are used to subdivide privileges and responsibilities within the WebGUI system. For instance, you may be building a site for a classroom situation. In that case you might set up a different group for each class that you teach. You would then apply those groups to the pages that are designed for each class.
<p>
The Groups page displays all groups that you are allowed to edit.  The form on the page allows you to display a subset of those groups.  The search engine uses SQL wildcards like '%' instead of the familiar ones used by internet search engines.
<p>
|,
		lastUpdated => 1100224416
	},

	'50' => {
		message => q|Username|,
		lastUpdated => 1031514049
	},

	'476' => {
		message => q|Text Area|,
		lastUpdated => 1031514049
	},

	'854' => {
		message => q|List all templates like this one.|,
		lastUpdated => 1039926488
	},

	'969' => {
		message => q|If you choose to empty your clipboard, any items contained in it will be moved to the trash.
|,
		lastUpdated => 1052850265
	},

	'1076' => {
		message => q|WebGUI Database|,
		lastUpdated => 1070899134
	},

	'797' => {
		message => q|View traffic statistics.|,
		lastUpdated => 1036978191
	},

	'510' => {
		message => q|Flat|,
		lastUpdated => 1031514049
	},

	'766' => {
		message => q|Back to collateral list.|,
		lastUpdated => 1036892898
	},

	'1077' => {
		message => q|The function you are attempting to call is not available for this authentication module|,
		lastUpdated => 1067951805
	},

	'449' => {
		message => q|Miscellaneous Information|,
		lastUpdated => 1031514049
	},

	'658' => {
		message => q|Users, Manage|,
		lastUpdated => 1031514049
	},

	'967' => {
		message => q|Empty system trash.|,
		lastUpdated => 1052850265
	},

	'322' => {
		message => q|Pager|,
		lastUpdated => 1031514049
	},

	'469' => {
		message => q|Id|,
		lastUpdated => 1031514049
	},

	'682' => {
		message => q|User Profile, Edit|,
		lastUpdated => 1031514049
	},

	'635' => {
		message => q|Packages are groups of pages and wobjects that are predefined to be deployed together. A package manager may see the need to create a package several pages with a message board, an FAQ, and a Poll because that task is performed quite often. Packages are often defined to lessen the burden of repetitive tasks.
<br><br>
One package that many people create is a Page/Article package. It is often the case that you want to add a page with an article on it for content. Instead of going through the steps of creating a page, going to the page, and then adding an article to the page, you may wish to simply create a package to do those steps all at once.|,
		lastUpdated => 1038889471
	},

	'353' => {
		message => q|You have no messages in your Inbox at this time.|,
		lastUpdated => 1031514049
	},

	'575' => {
		message => q|Edit|,
		lastUpdated => 1031514049
	},

	'984' => {
		message => q|Copy this database link.|,
		lastUpdated => 1056151382
	},

	'1039' => {
		message => q|Back|,
		lastUpdated => 1066073289
	},

	'946' => {
		message => q|Use shared trash?|,
		lastUpdated => 1052850265
	},

	'979' => {
		message => q|Are you certain you wish to delete all items in this folder? They cannot be recovered once deleted. Items in sub-folders will not be removed.|,
		lastUpdated => 1055908341
	},

	'1005' => {
		message => q|SQL Query|,
		lastUpdated => 1057208065
	},

	'28' => {
		message => q|Monday|,
		lastUpdated => 1031514049
	},

	'40' => {
		message => q|Vital Component|,
		lastUpdated => 1031514049
	},

	'310' => {
		message => q|Allow extra contact information?|,
		lastUpdated => 1031514049
	},

	'699' => {
		message => q|First Day Of Week|,
		lastUpdated => 1031514049
	},

	'960' => {
		message => q|Trash, Manage|,
		lastUpdated => 1052850265
	},

	'818' => {
		message => q|Deactivated|,
		lastUpdated => 1038431300
	},

	'130' => {
		message => q|Maximum Attachment Size|,
		lastUpdated => 1031514049
	},

	'1038' => {
		message => q|Unstick|,
		lastUpdated => 1066065454
	},

	'53' => {
		message => q|Make Page Printable|,
		lastUpdated => 1031514049
	},

	'387' => {
		message => q|Uploaded By|,
		lastUpdated => 1031514049
	},

	'245' => {
		message => q|Date|,
		lastUpdated => 1031514049
	},

	'626' => {
		message => q|Wobjects (formerly known as Widgets) are the true power of WebGUI. Wobjects are tiny pluggable applications built to run under WebGUI. Articles, message boards and polls are examples of wobjects.
<p>

To add a wobject to a page, first go to that page, then select <b>Add Content...</b> from the upper left corner of your screen. Each wobject has it's own help so be sure to read the help if you're not sure how to use it.
<p>


<b>Style Sheets:</b><br>
All wobjects have a style-sheet class and id attached to them. 
The style-sheet class is the word "wobject" plus the type of wobject it is. So for a poll the class would be "wobjectPoll". The class pertains to all wobjects of that type in the system. 
<p>

The style-sheet id is the word "wobjectId" plus the Wobject Id for that wobject instance. So if you had an Article with a Wobject Id of 94, then the id would be "wobjectId94".
<p>
<h3>URLs</h3>

<b>Direct Linking:</b><br>
You can create a URL to link directly to a wobject
on the page be appending the Wobject Id to the URL for the page.
<p>
For example, if the Article above was on a page http://www.mysite.com/thisPage, the link below will jump directly to the wobject on that page:<br>

http://www.mysite.com/thisPage#94
<p>
|,
		lastUpdated => 1101775387,
	},

	'543' => {
		message => q|Add a new image group.|,
		lastUpdated => 1031514049
	},

	'941' => {
		message => q|Checkbox List|,
		lastUpdated => 1051464113
	},

	'826' => {
		message => q|WebGUI has a powerful templating language built to give you maximum control over the layout of your content.
<p/><b>NOTES:</b><br/>
Both the template language and template variables are case-insensitive.
<p/>
<b>Session Variables</b><br/>
In addition to any variables defined in a given template, of the session variables are made available to you with this syntax:
<p>

&lt;tmpl_var session.<i>section</i>.<i>variable</i>&gt;

<p/>
In the examples below, please note that the words <i>foo</i> and <i>bar</i> are used as placeholders for the actual variable names that you'll use. They are not part of the template language.

<p/>
<b>Variables</b><br/>
Variables are the most basic of the template commands. They are used to position pieces of content.

<p/>
<i>Syntax:</i> &lt;tmpl_var foo&gt; or &lt;tmpl_var name="foo"&gt;
<p/>

<i>Example:</i> &lt;tmpl_var name&gt;
<p/>

<b>Conditions</b><br/>
To programmers conditions are nothing new, but to designers they can often be confusing at first. Conditions are really just true or false questions, and if you think of them that way, you'll have no trouble at all.
<p/>

<i>Syntax:</i> &lt;tmpl_if foo&gt; &lt;tmpl_else&gt; &lt;/tmpl_if&gt;
<br/>
<i>Syntax:</i> &lt;tmpl_unless foo&gt; &lt;tmpl_else&gt; &lt;/tmpl_unless&gt;
<p/>

<i>Example:</i> &lt;tmpl_if isTrue&gt; It was true!&lt;tmpl_else&gt; It was false! &lt;/tmpl_if&gt;
<p/>

<b>Loops</b><br/>
Loops iterate over a list of data output for each pass in the loop. Loops are slightly more complicated to use than plain variables, but are considerably more powerful.
<p/>

<i>Syntax:</i> &lt;tmpl_loop foo&gt; &lt;/tmpl_loop&gt;
<p/>

<i>Example:</i> <br/>
&lt;tmpl_loop users&gt; <br/>
  &nbsp; Name: &lt;tmpl_var first_name&gt;&lt;br/&gt;<br/>
&lt;/tmpl_loop&gt;
<p/>

<b>Loop Conditions</b><br/>
Loops come with special condition variables of their own. They are __FIRST__, __ODD__, __INNER__, and __LAST__.
<p/>

<i>Examples:</i><br/>
<pre>
   &lt;TMPL_LOOP FOO&gt;
      &lt;TMPL_IF __FIRST__&gt;
        This only outputs on the first pass.
      &lt;/TMPL_IF&gt;

      &lt;TMPL_IF __ODD__&gt;
        This outputs every other pass, on the odd passes.
      &lt;/TMPL_IF&gt;

      &lt;TMPL_UNLESS __ODD__&gt;
        This outputs every other pass, on the even passes.
      &lt;/TMPL_UNLESS&gt;

      &lt;TMPL_IF __INNER__&gt;
        This outputs on passes that are neither first nor last.
      &lt;/TMPL_IF&gt;

      &lt;TMPL_IF __LAST__&gt;
        This only outputs on the last pass.
      &lt;TMPL_IF&gt;
   &lt;/TMPL_LOOP&gt;
</pre>

<p/>|,
		lastUpdated =>1102704289,
	},

	'354' => {
		message => q|View Inbox.|,
		lastUpdated => 1031514049
	},

	'461' => {
		message => q|Date Format|,
		lastUpdated => 1031514049
	},

	'583' => {
		message => q|Max Image Size|,
		lastUpdated => 1031514049
	},

	'1064' => {
		message => q|Post a Message|,
		lastUpdated => 1066580782
	},

	'757' => {
		message => q|Manage Collateral|,
		lastUpdated => 1036892669
	},

	'951' => {
		message => q|Are you certain that you wish to empty the clipboard to the trash?|,
		lastUpdated => 1052850265
	},

	'782' => {
		message => q|Any|,
		lastUpdated => 1036913053
	},

	'85' => {
		message => q|Description|,
		lastUpdated => 1031514049
	},

	'809' => {
		message => q|Email Group|,
		lastUpdated => 1037579611
	},

	'332' => {
		message => q|Work Zip Code|,
		lastUpdated => 1031514049
	},

	'9' => {
		message => q|View clipboard.|,
		lastUpdated => 1031514049
	},

	'425' => {
		message => q|Active Sessions|,
		lastUpdated => 1031514049,
                context => q|Title of the active sessions manager for the admin console.|
	},

	'745' => {
		message => q|Go back to the page.|,
		lastUpdated => 1035872437
	},

	'832' => {
		message => q|The collateral management system has several macros for its specific purpose.
<p/>

<b>&#94;File();</b><br/>
&#94;File(<i>collateralFileName</i>);<BR>
&#94;File(<i>collateralFileName</i>,<i>templateName</i>);<BR>
This macro builds a quick link to a file in the Collateral Manager. It creates an icon for the file and outputs the files' name. Then it links them both to the file for downloading.  The following variables are available for use in the template:
<p/>
<b>file.url</b><br/>
The URL to the file.
<p/>
<b>file.icon</b><br/>
The file's icon.
<p/>
<b>file.name</b><br/>
The name of the file.
<p/>
<b>file.size</b><br/>
The size of the file.
<p/>
<b>file.thumbnail</b><br/>
The file's thumbnail.
<p/>

An optional second parameter, a template name, allows a custom template
from the Macro/File template namespace to be used instead of the default.
If a template with that name is not found, then the default is used.<br>
<p/>

<b>&#94;I();</b><br/>
This macro retrieves an image from the collateral management system along with an HTML image tag so that you can quickly display an image from the repository in your content.
<p/>
<i>Example:</i> &#94;I("logo");
<p/>

<b>&#94;i();</b><br/>
This macro retrieves the URL for any file in the collateral management system.
<p/>
<i>Example:</i> &#94;i("status report");
<p/>


<b>&#94;RandomImage();</b><br/>
This macro takes the name of a collateral folder as a parameter. If the folder name is omitted, then the root folder will be used. The macro then randomly chooses an image in the folder and returns it in much the same way the &#94;I(); macro works.
<p />
<i>Example:</i> &#94;RandomImage("site headers");
<p />

<b>&#94;RandomSnippet();</b><br/>
This macro takes the name of a collateral folder as a parameter. If the folder name is omitted, then the root folder will be used. The macro then randomly chooses a snippet from the folder and returns it in much the same way the &#94;Snippet(); macro works.
<p />
<i>Example:</i> &#94;RandomSnippet("quips");
<p />


<b>&#94;SI();</b><br/>
The Scaled Image macro allows images to be found in the collateral and scaled (on the server-side), either maintaining the original aspect ratio or an entirely new ratio of your design. 
<p>
It takes four parameters. The first is the image name or optionally the collateral id. The second is the width. Set the width to "0" to maintain aspect ratio by height. The third is height. Set the height to "0" to maintain aspect ratio by width. The fourth parameter allows you to specify additional parameters to the image.
<p />
<i>Examples:</i><br>
Retrieving an image by name (no scaling)<br>
^SI(myimage);
<p>
Retrieving an image by collateralId (no scaling)<br>
^SI(8ucfhA1Joswj59UFIubr1Q);
<p>
Scaling by width, maintaining aspect ratio<br>
^SI(8ucfhA1Joswj59UFIubr1Q,25);
<p>
Scaling by height, maintaining aspect ratio<br>
^SI(8ucfhA1Joswj59UFIubr1Q,0,25);
<p>
Playing with the aspect ratio<br>
^SI(8ucfhA1Joswj59UFIubr1Q,148,25);
<p>
Using parameters<br>
^SI(8ucfhA1Joswj59UFIubr1Q,0,0,'border="0"');
<p />


<b>&#94;Snippet();</b><br/>
&#94;Snippet(<i>snippet name</i>);<br/>
This macro retrieves the contents of a snippet in the collateral management system and inserts it into the page. You can optionally specify up to 9 additional parameters that will be replace these special characters in the snippet: ^1; ^2; ^3; ^4; ^5; ^6; ^7; ^8; ^9;
<p />
<i>Example:</i> &#94;Snippet("flash code");
<p />

<b>&#94;Thumbnail();</b><br/>
&#94;Thumbnail(<i>image name</i>);<br/>
This macro retrieves the URL for the thumbnail of any image in the collateral management system.
<p/>
<i>Example:</i> &#94;Thumbnail("logo");
<p/>
|,
		lastUpdated => 1101886126,
	},

	'736' => {
		message => q|7 Expert|,
		lastUpdated => 1033836692
	},

	'539' => {
		message => q|Enable Karma?|,
		lastUpdated => 1031514049
	},

	'781' => {
		message => q|Snippet|,
		lastUpdated => 1036912954
	},

	'828' => {
		message => q|Most wobjects have templates that allow you to change the layout of the wobject's user interface. Those wobjects that do have templates all have a common set of template variables that you can use for layout, as well as their own custom variables. The following is a list of the common template variables shared among all wobjects.
<p/>
<b>title</b><br/>
The title for this wobject.
<p/>

<b>displayTitle</b><br/>
A conditional variable for whether or not the title should be displayed.
<p/>

<b>description</b><br/>
The description of this wobject.
<p/>

<b>wobjectId</b><br/>
The unique identifier that WebGUI uses to control this wobject.
<p/>

<b>isShortcut</b><br />
A conditional indicating if this wobject is a shortcut to an original wobject.
<p />

<b>originalURL</b><br />
If this wobject is a shortcut, then this URL will direct you to the original wobject.
<p />|,
		lastUpdated => 1053469640
	},

	'90' => {
		message => q|Add new group.|,
		lastUpdated => 1031514049
	},

	'102' => {
		message => q|Edit Page|,
		lastUpdated => 1031514049
	},

	'565' => {
		message => q|Who can moderate?|,
		lastUpdated => 1031514049
	},

	'620' => {
		message => q|As this function suggests you'll be deleting a group and removing all users from the group. Be careful not to restrict users from pages they should have access to by deleting a group that is in use.
<p>

As with any delete operation, you are prompted to be sure you wish to proceed with the delete. If you answer yes, the delete will proceed and there is no recovery possible. If you answer no you'll be returned to the prior screen.|,
		lastUpdated => 1100154599
	},

	'520' => {
		message => q|I would like to be notified via email.|,
		lastUpdated => 1031514049
	},

	'1004' => {
		message => q|Cache external groups for how long?|,
		lastUpdated => 1057208065
	},

	'937' => {
		message => q|In order to import a theme you need a valid theme file exported from another WebGUI site. Just select the theme from your hard drive and click the "Import" button. You'll then get a confirmation screen asking whether this is the theme you wanted to import. If you agree, click on the "Import" button again and you'll have your new theme. You can then start to apply the theme to your site as you would any normal style, template, or collateral data.
<p>
You cannot import a theme twice. If you wish to import a new version of a theme, then you must first delete the previous version of the theme. 
<p>
You also cannot import a theme from a version of WebGUI that is newer than the one you're using. Therefore if you are using WebGUI 5.2.4 and a theme was created with WebGUI 6.0.0, then you will not be allowed to import the theme until you upgrade.
|,
		lastUpdated => 1050436484
	},

	'891' => {
		message => q|Only negate macros.|,
		lastUpdated => 1047838859
	},

	'1045' => {
		message => q|Nested|,
		lastUpdated => 1066405110
	},

	'532' => {
		message => q|with <b>at least one</b> of the words|,
		lastUpdated => 1031514049
	},

	'730' => {
		message => q|1 Novice|,
		lastUpdated => 1033836642
	},

	'16' => {
		message => q|February|,
		lastUpdated => 1031514049
	},

	'921' => {
		message => q|Theme Package File|,
		lastUpdated => 1050260403
	},

	'1069' => {
		message => q|Host To Use|,
		lastUpdated => 1066641432
	},

	'1013' => {
		message => q|Make sticky?|,
		lastUpdated => 1060434033
	},

	'233' => {
		message => q|(eom)|,
		lastUpdated => 1031514049
	},

	'57' => {
		message => q|This is only necessary if you wish to use features that require Email.|,
		lastUpdated => 1031514049
	},

	'368' => {
		message => q|Add a new group to this user.|,
		lastUpdated => 1031514049
	},

	'872' => {
		message => q|Who can view?|,
		lastUpdated => 1044218038
	},

	'316' => {
		message => q|Last Name|,
		lastUpdated => 1031514049
	},

	'163' => {
		message => q|Add User|,
		lastUpdated => 1031514049
	},

	'994' => {
		message => q|Database User|,
		lastUpdated => 1056151382
	},

	'395' => {
		message => q|Add a new image.|,
		lastUpdated => 1031514049
	},

	'89' => {
		message => q|Groups|,
		lastUpdated => 1031514049,
                context => q|Title of the group manager for the admin console.|
	},

	'175' => {
		message => q|Process macros?|,
		lastUpdated => 1031514049
	},

	'988' => {
		message => q|Are you certain you wish to delete this database link?  The following items are using this link and will no longer work if you delete it:|,
		lastUpdated => 1056151382
	},

	'35' => {
		message => q|Administrative Function|,
		lastUpdated => 1031514049
	},

	'11' => {
		message => q|Empty trash.|,
		lastUpdated => 1051514049
	},

	'492' => {
		message => q|Profile fields list.|,
		lastUpdated => 1031514049
	},

	'347' => {
		message => q|View Profile For|,
		lastUpdated => 1031514049
	},

	'842' => {
		message => q|<P>These macros are used to create navigation on the site. </P>
<P><B>^H; or ^H(); - Home Link</B><BR>A link to the home page of this site. In addition you can change the link text by creating a macro like this <B>^H("Go Home");</B>. 
<P><B>NOTES:</B> You can also use the special case ^H(linkonly); to return only the URL to the home page and nothing more. Also, the .homeLink style sheet class is tied to this macro. And you can specify a second parameter that with the name of a template in the Macro/H_homeLink namespace that will override the default template. The following variables are available for use in the template:</P>
<p/>
<b>homeLink.url</b><br/>
The URL to the home page.
<p/>
<b>homeLink.text</b><br/>
The translated label for the link to the home page or the text that you supply to the macro.
<p/>
<P><B>^/; - System URL</B><BR>The URL to the gateway script (example: <I>/index.pl/</I>). 
<P><B>^\; - Page URL</B><BR>The URL to the current page (example: <I>/index.pl/pagename</I>). 
<P><STRONG>^Navigation(crumbTrail);<BR></STRONG>A dynamically generated crumb trail to the current page.
<P><B>NOTE:</B> The .crumbTrail style sheet class is tied to this macro. </P>
<P><STRONG>^Navigation(FlexMenu);</STRONG><BR>This menu macro creates a top-level menu that expands as the user selects each menu item. </P>
<P><STRONG>^Navigation(currentMenuVertical);</STRONG><BR>A vertical menu containing the sub-pages at the current level. By default it tracks 1 level deep. </P>
<P><STRONG>^Navigation(currentMenuHorizontal);</STRONG><BR>A horizontal menu containing the sub-pages at the current level.</P>
<P><STRONG>^Navigation(PreviousDropMenu);</STRONG><BR>Create a drop down menu containing the sub-pages at the previous level in the page tree. </P>
<P><STRONG>^Navigation(previousMenuVertical);</STRONG><BR>A vertical menu containing the sub-pages at the previous level. By default it will show only the first level. </P>
<P><STRONG>^Navigation(previousMenuHorizontal);</STRONG><BR>A horizontal menu containing the sub-pages at the previous level. </P>
<P><STRONG>^Navigation(rootmenu);</STRONG><BR>Creates a horizontal menu of the various roots on your system (except for the WebGUI system roots).</P>
<P><STRONG>^Navigation(SpecificDropMenu);</STRONG><BR>Create a drop down menu starting at a specific point in your navigation tree. The default start page is "home". </P>
<P><STRONG>^Navigation(SpecificSubMenuVertical);</STRONG><BR>Allows you to get the submenu of any page, starting with the page you specified. The default start page is "home" and it will show the first level. </P>
<P><STRONG>^Navigation(SpecificSubMenuHorizontal);</STRONG><BR>Allows you to get the submenu of any page, starting with the page you specified. The default start page is "home" and it will show the first level. </P>
<P><STRONG>^Navigation(TopLevelMenuVertical);</STRONG><BR>A vertical menu containing the main pages of the site (aka the sub-pages from the home page). By default it will show only the first level. </P>
<P><STRONG>^Navigation(TopLevelMenuHorizontal);</STRONG><BR>A vertical menu containing the main pages of the site (aka the sub-pages from the home page).</P>
<P><STRONG>^Navigation(RootTab);</STRONG><BR>Create a tab navigation system from the roots on your site (except WebGUI's system roots) similar to the tabs used in the tab forms (editing wobjects or pages). </P>
<P><STRONG>NOTE:</STRONG> Has two special style sheet classes: .rootTabOn and .rootTabOff}. 
<P><I>Example:</I><BR>&lt;style&gt; .rootTabOn { line-height: 17px; font-size: 16px; spacing: 3px; border: 1px solid black; border-bottom-width: 0px; background-color: #333333; z-index: 10000; padding: 3px 9px 5px 9px; color: white; } .rootTabOn A, .rootTabOn A:visited { color: white; font-weight: bold; text-decoration: none; } .rootTabOff { line-height: 15px; font-size: 14px; border: 1px solid black; border-bottom-width: 0px; background-color: #c8c8c8; z-index: 1000; padding: 2px 9px 2px 9px; } .rootTabOff A, .rootTabOff A:visited { color: black; text-decoration: underline; } .rootTabOff A:hover { font-weight: bold; } &lt;/style&gt; ^RootTab; </P>
<P><STRONG>^Navigation(TopDropMenu);</STRONG><BR>Create a drop down menu of your top level navigation. </P>
<P><STRONG>^Navigation(dtree);</STRONG><BR>Create a dynamic tree menu.</P>
<P><STRONG>^Navigation(coolmenu);</STRONG><BR>Create a DHTML driven menu. </P>
<P><STRONG>^Navigation(Synopsis);</STRONG><BR>This macro allows you to get the submenu of a page along with the synopsis of each link. </P>
<P><STRONG>NOTES:</STRONG> The .synopsis_sub, .synopsis_summary, and .synopsis_title style sheet classes are tied to this macro. <BR></P>
<P>It should be noted that many of these macros can also make use of these style sheet classes: </P>
<P><B>.selectedMenuItem</B><BR>Use this class to highlight the current page in any of the menu macros. 
<P><B>.verticalMenu </B><BR>The vertical menu (if you use a vertical menu macro). 
<P><B>.horizontalMenu </B><BR>The horizontal menu (if you use a horizontal menu macro). </P>|,
		lastUpdated => 1101775402
	},

	'511' => {
		message => q|Threaded|,
		lastUpdated => 1031514049
	},

	'665' => {
		message => q|Group, Delete|,
		lastUpdated => 1031514049
	},

	'434' => {
		message => q|Status|,
		lastUpdated => 1031514049
	},

	'93' => {
		message => q|Help|,
		lastUpdated => 1031514049
	},

	'865' => {
		message => q|Notify user about expiration?|,
		lastUpdated => 1044126938
	},

	'904' => {
		message => q|Theme Name|,
		lastUpdated => 1050190959
	},

	'930' => {
		message => q|View Theme|,
		lastUpdated => 1050270912
	},

	'442' => {
		message => q|Work Information|,
		lastUpdated => 1031514049
	},

	'429' => {
		message => q|Login Time|,
		lastUpdated => 1031514049
	},

	'886' => {
		message => q|Hide from navigation?|,
		lastUpdated => 1044727952
	},

	'73' => {
		message => q|Log in.|,
		lastUpdated => 1031514049
	},

	'409' => {
		message => q|Add a new root.|,
		lastUpdated => 1031514049
	},

	'642' => {
		message => q|Page, Add/Edit|,
		lastUpdated => 1078569027
	},

	'67' => {
		message => q|Create a new account.|,
		lastUpdated => 1031514049
	},

	'1028' => {
		message => q|Moderate posts?|,
		lastUpdated => 1065966284
	},

	'812' => {
		message => q|Your message has been sent.|,
		lastUpdated => 1037580328
	},

	'795' => {
		message => q|Roots|,
		lastUpdated => 1036972103
	},

	'794' => {
		message => q|Packages|,
		lastUpdated => 1036971944
	},

	'1059' => {
		message => q|The following are the template variables available in the post template.
<p>

<b>callback.url</b><br>
The url back to the calling object such as an article or user submission.
<p>

<b>callback.label</b><br>
The default label for callback.url.
<p>

<b>post.subject</b><br>
The subject of this post.
<p>

<b>post.subject.label</b><br>
The default label for post.subject
<p>

<b>post.message</b><br>
The message of this post.
<p>

<b>user.canPost</b><br>
A conditional indicating whether the current user can post a new message.
<p>

<b>post.date.value</b><br>
A human readable date for this post.
<p>

<b>post.date.epoch</b><br>
The epoch date for this post.
<p>

<b>post.time.value</b><br>
The human readable time for this post.
<p>

<b>post.date.label</b><br>
The default label for post.date.value.
<p>

<b>post.rating.value</b><br>
The average rating of this post.
<p>

<b>post.rating.label</b><br>
The default label for post.date.value.
<p>

<b>post.views.value</b><br>
The number of views for this post.
<p>

<b>post.views.label</b><br>
The default label for post.views.value.
<p>

<b>post.status.value</b><Br>
the status of this post.
<p>

<b>post.status.label</b><br>
The default label for post.status.value.
<p>

<b>post.isLocked</b><br>
A conditional indicating whether the thread this post is in is locked.
<p>

<b>post.isModerator</b><br>
A conditional indicating whether the current user is a moderator.
<p>

<b>post.canEdit</b><br>
A conditional indicating whether the current user can edit this post.
<p>

<b>post.user.isVisitor</b><br>
A conditional indicating whether the poster was a visitor.
<p>

<b>post.user.id</b</b><br>
The userId of the poster.
<p>

<b>post.user.name</b><br>
The poster's username.
<p>

<b>post.user.alias</b><br>
The poster's current alias.
<p>

<b>post.user.profile</b><br>
The url to the poster's profile.
<p>

<b>post.url</b><br>
The url to display this post.
<p>

<b>post.id</b><br>
The unique id of this post.
<p>

<b>post.rate.label</b><br>
The default label for post.rate.url.1.
<p>

<b>post.rate.url.1</b><br>
The url to give this post a rating of 1.
<p>

<b>post.rate.url.2</b><br>
The url to give this post a rating of 2.
<p>


<b>post.rate.url.3</b><br>
The url to give this post a rating of 3.
<p>


<b>post.rate.url.4</b><br>
The url to give this post a rating of 4.
<p>


<b>post.rate.url.5</b><br>
The url to give this post a rating of 5.
<p>

<b>post.hasRated</b><br>
A conditional indicating whether the current user has already rated this post.
<p>

<b>post.reply.label</b><br>
The default label for post.reply.url.
<p>

<b>post.reply.url</b><br>
The url to reply to this post.
<p>

<b>post.reply.withquote.url</b><br>
The url to reply to this post and quote this post in doing so.
<p>

<b>post.edit.label</b><br>
The default label for post.edit.url.
<p>

<b>post.edit.url</b><br>
The url to edit this post.
<p>

<b>post.delete.url</b><br>
The url to delete this post.
<p>

<b>post.delete.label</b><br>
The default label for post.delete.url.
<p>

<b>post.approve.label</b><br>
The default label for post.approve.url.
<p>

<b>post.approve.url</b><br>
The url to approve this post.
<p>

<b>post.deny.url</b><br>
The url to deny this post.
<p>

<b>post.deny.label</b><br>
The default label for post.deny.url.
<p>

<b>post.full</b><br>
The full post rendered using the post template. This would never be used in the post template directly, but is often used in other templates that embed the post template's variables.
<p>

<b>forum.title</b><br>
The title of this forum as passed by the calling object.
<p>

<b>forum.description</b><br>
The description of this forum as passed by the calling object.
<p>
|,
		lastUpdated => 1099613407
	},

	'327' => {
		message => q|Home Country|,
		lastUpdated => 1031514049
	},

	'939' => {
		message => q|When you delete a theme you've created all you're actually deleting is the basic properties for the theme. However, when you delete a theme you've imported, you'll also be deleting all of its components (styles, templates, and collateral) as well. Be careful that you are no longer using any of those components before deleting them.|,
		lastUpdated => 1050437207
	},

	'320' => {
		message => q|<a href="http://messenger.yahoo.com/">Yahoo! Messenger</a> Id|,
		lastUpdated => 1031514049
	},

	'944' => {
		message => q|Zip Code|,
		lastUpdated => 1051962797
	},

	'732' => {
		message => q|3 Rookie|,
		lastUpdated => 1033836660
	},

	'913' => {
		message => q|Template|,
		lastUpdated => 1050232279
	},

	'811' => {
		message => q|From|,
		lastUpdated => 1037580145
	},

	'957' => {
		message => q|Clipboard, Manage|,
		lastUpdated => 1052850265
	},

	'622' => {
		message => q|
<p>

<b>Group Name</b><br>
A name for the group. It is best if the name is descriptive so you know what it is at a glance.
<p>

<b>Description</b><br>
A longer description of the group so that other admins and content managers (or you if you forget) will know what the purpose of this group is.
<p>

<b>Expire Offset</b><br>
The amount of time that a user will belong to this group before s/he is expired (or removed) from it. This is very useful for membership sites where users have certain privileges for a specific period of time. 
<p>
<b>NOTE:</b> This can be overridden on a per-user basis.
<p>

<b>Notify user about expiration?</b><br>
Set this value to yes if you want WebGUI to contact the user when they are about to be expired from the group.
<p>

<b>Expire Notification Offset</b><br>
The difference in the number of days from the expiration to the notification. You may set this to any valid integer. For instance, set this to "0" if you wish the notification to be sent on the same day that the grouping expires. Set it to "-7" if you want the notification to go out 7 days <b>before</b> the grouping expires. Set it to "7" if you wish the notification to be sent 7 days after the expiration.
<p>

<b>Expire Notification Message</b><br>
Type the message you wish to be sent to the user telling them about the expiration.
<p>

<b>Delete Offset</b><br>
The difference in the number of days from the expiration to the grouping being deleted from the system. You may set this to any valid integer. For instance, set this to "0" if you wish the grouping to be deleted on the same day that the grouping expires. Set it to "-7" if you want the grouping to be deleted 7 days <b>before</b> the grouping expires. Set it to "7" if you wish the grouping to be deleted 7 days after the expiration.
<p>

<b>Scratch Filter</b><br>
A user can be dynamically bound to a group by a scratch variable in their session. Scratch variables can be set programatically, or via the web. To set a scratch variable via the web, tack the following on to the end of any URL:
<p>
<i>?op=setScratch&amp;scratchName=somename&amp;scratchValue=somevalue</i>
<p>
Having done that, when a user clicks on that link they will have a scratch variable added to their session with a name of "www_somename" and a value of "somevalue". The "www_" is prefixed to prevent web requests from overwriting scratch variables that were set programatically.
<p>
To set a scratch filter simply add a line to the scratch filter field that looks like:
<p>
<i>www_somename=somevalue</i>
<p>

<b>IP Address</b><br>
Specify an IP address or an IP mask to match. If the user's IP address matches, they'll automatically be included in this group. An IP mask is simply the IP address minus an octet or two. You may also specify multiple IP masks separated by semicolons.
<p>
<i>IP Mask Example:</i> 10.;192.168.;101.42.200.142
<p>

<b>Karma Threshold</b><br>
If you've enabled Karma, then you'll be able to set this value. Karma Threshold is the amount of karma a user must have to be considered part of this group.
<p>

<b>Users can add themselves?</b><br>
Do you wish to let users add themselves to this group? See the GroupAdd macro for more info.
<p>

<b>Users can remove themselves?</b><br>
Do you wish to let users remove themselves from this group? See the GroupDelete macro for more info.
<p>

<i>The following options are recommended only for advanced WebGUI administrators.</i>
<p>

<b>Database Link</b><br>
If you'd like to have this group validate users using an external database, choose the database link to use.
<p>

<b>SQL Query</b><br>
Many organizations have external databases that map users to groups; for example an HR database might map Employee ID to Health Care Plan.  To validate users against an external database, you need to construct a SQL statement that will return 1 if a user is in the group.  Make sure to begin your statement with "select 1".  You may use macros in this query to access data in a user's profile, such as Employee ID.  Here is an example that checks a user against a fictional HR database.  This assumes you have created an additional WebGUI profile field called employeeId.<br>
<br>
select 1 from employees, health_plans, empl_plan_map<br>
where employees.employee_id = &#94;User("employeeId");<br>
and health_plans.plan_name = 'HMO 1'<br>
and employees.employee_id = empl_plan_map.employee_id<br>
and health_plans.health_plan_id = empl_plan_mp.health_plan_id<br>
<br>
This group could then be named "Employees in HMO 1", and would allow you to restrict any page or wobject to only those users who are part of this health plan in the external database.
<p>

<b>Cache external groups for how long?</b><br>
Large sites using external group data will be making many calls to the external database.  To help reduce the load, you may select how long you'd like to cache the results of the external database query within the WebGUI database.  More advanced background caching may be included in a future version of WebGUI.|,
		lastUpdated => 1101775417
	},

	'361' => {
		message => q|Three Over One|,
		lastUpdated => 1031514049
	},

	'465' => {
		message => q|Text Box Size|,
		lastUpdated => 1031514049
	},

	'contains' => {
		message => q|Contains|,
		lastUpdated => 1089039511
	},

	'819' => {
		message => q|Self-Deactivated|,
		lastUpdated => 1038431323
	},

	'970' => {
		message => q|set time|,
		lastUpdated => 1053278089
	},

	'776' => {
		message => q|Edit Folder|,
		lastUpdated => 1036905944
	},

	'894' => {
		message => q|Allow discussion?|,
		lastUpdated => 1031514049
	},

	'24' => {
		message => q|October|,
		lastUpdated => 1031514049
	},

	'858' => {
		message => q|Alias|,
		lastUpdated => 1043879848
	},

	'104' => {
		message => q|URL|,
		lastUpdated => 1031514049,
		context => q|asset property|
	},

	'412' => {
		message => q|Synopsis|,
		lastUpdated => 1031514049
	},

	'954' => {
		message => q|Manage system clipboard.|,
		lastUpdated => 1052850265
	},

	'385' => {
		message => q|Parameters|,
		lastUpdated => 1031514049
	},

	'502' => {
		message => q|Are you certain you wish to delete this template and set all pages using this template to the default template?|,
		lastUpdated => 1031514049
	},

	'307' => {
		message => q|Use default meta tags?|,
		lastUpdated => 1031514049
	},

	'314' => {
		message => q|First Name|,
		lastUpdated => 1031514049
	},

	'801' => {
		message => q|Wobject Interactions|,
		lastUpdated => 1036978843
	},

	'985' => {
		message => q|Delete this database link.|,
		lastUpdated => 1056151382
	},

	'971' => {
		message => q|Time|,
		lastUpdated => 1053278208
	},

	'830' => {
		message => q|Page templates are used to organize wobjects on your page. To do this you create page template positions. You can have any number of positions in your page template, but you must always have position one. The following are the variables available to page templates.

<p>
<b>NOTE:</b> The position elements can go up to 1 billion, which should be more than enough for the average site.

<p>

<b>position<i>X</i>_loop</b><br>
The loop that defines a page position and contains a list of wobjects for that position. Replace <i>X</i> with a number, so position one would be <i>position1_loop</i>, and position two would be <i>position2_loop</i>, etc.
<blockquote>

<b>wobject.canView</b><br>
A conditional indicating whether the current user has the privileges to view this wobject. 
<p>

<b>wobject.canEdit</b><br>
A conditional indicating whether the current user has the privileges to edit this wobject.
<p>

<b>wobject.controls</b><br>
The icon toolbar for manipulating the properties of this wobject and for copying, deleting and moving the wobject
on the page.
<p>

<b>wobject.controls.drag</b><br>
The toolbar icon that allows the wobject to be repositioned via a click and drag interface.
<p>

<b>wobject.namespace</b><br>
The namespace of this wobject. This is also known as the wobject type, for instance Article, USS, SQLReport, and SiteMap are all namespaces.
<p>

<b>wobject.id</b><br>
The unique identifier for this wobject.
<p>

<b>wobject.isInDateRange</b><br>
A conditional indicating whether the wobject is scheduled to be displayed right now. The variable <i>wobject.canView</i> already takes this into account, but content managers can always view content, so this is an extra check so they don't have to see the wobject if it's not scheduled to appear yet, or if it's end date has already passed.
<p>

<b>wobject.content</b><br>
The content produced by the wobject.
<p>

</blockquote>

<p>

<b>page.canEdit</b><br>
A conditional indicating whether the current user has the privileges to edit this page.
<p>

<b>page.controls</b><br>
The toolbar for manipulating the properties of the page.
<p>



|,
		lastUpdated => 1102027873,
	},

	'754' => {
		message => q|Manage the users in this group.|,
		lastUpdated => 1036866994
	},

	'355' => {
		message => q|Default|,
		lastUpdated => 1031514049
	},

	'847' => {
		message => q|Go back to the current page.|,
		lastUpdated => 1039587250
	},

	'747' => {
		message => q|Usernames must contain only alpha-numeric characters.|,
		lastUpdated => 1036384261
	},

	'479' => {
		message => q|Date|,
		lastUpdated => 1031514049
	},

	'159' => {
		message => q|Inbox|,
		lastUpdated => 1031514049
	},

	'553' => {
		message => q|Status|,
		lastUpdated => 1031514049
	},

	'704' => {
		message => q|Second(s)|,
		lastUpdated => 1031514049
	},

	'326' => {
		message => q|Home Zip Code|,
		lastUpdated => 1031514049
	},

	'555' => {
		message => q|Edit this user's karma.|,
		lastUpdated => 1031514049
	},

	'1037' => {
		message => q|Make sticky|,
		lastUpdated => 1066065402
	},

	'47' => {
		message => q|Home|,
		lastUpdated => 1031514049
	},

	'1054' => {
		message => q|Forum (Discussion) Properties|,
		lastUpdated => 1066583000
	},

	'681' => {
		message => q|Packages, Creating|,
		lastUpdated => 1038889481
	},

	'619' => {
		message => q|This function permanently deletes the selected wobject from a page. If you are unsure whether you wish to delete this content you may be better served to cut the content to the clipboard until you are certain you wish to delete it.
<p>


As with any delete operation, you are prompted to be sure you wish to proceed with the delete. If you answer yes, the delete will proceed and there is no recovery possible. If you answer no you'll be returned to the prior screen.
<p>

|,
		lastUpdated => 1031514049
	},

	'1017' => {
		message => q|Last Reply|,
		lastUpdated => 1031514049
	},

	'37' => {
		message => q|Permission Denied!|,
		lastUpdated => 1031514049
	},

	'335' => {
		message => q|Gender|,
		lastUpdated => 1031514049
	},

	'855' => {
		message => q|List all templates.|,
		lastUpdated => 1039926498
	},

	'1029' => {
		message => q|Edited at|,
		lastUpdated => 1047842180
	},

	'698' => {
		message => q|Karma is a method of tracking the activity of your users, and potentially rewarding or punishing them for their level of activity. Once karma has been enabled, you'll notice that the menus of many things in WebGUI change to reflect karma.
<p>

You can track whether users are logging in, and how much they contribute to your site. And you can allow them access to additional features by the level of their karma.
<p>

You can find out more about karma in <a href="http://www.plainblack.com/ruling_webgui">Ruling WebGUI</a>.|,
		lastUpdated => 1031514049
	},

	'1057' => {
		message => q|The following template variables are available in forum templates.
<p>

<b>callback.url</b><br>
A url that points to the calling object, such as an article or user submission.
<p>

<b>callback.label</b><br>
The default label for callback.url.
<p>

<b>user.isVisitor</b><br>
A conditional indicating whether the user is a visitor.
<p>

<b>thread.new.url</b><br>
The url to start a new thread.
<p>

<b>thread.new.label</b><br>
The default label for thread.new.url.
<p>

<b>forum.search.label</b><br>
The default label for forum.search.url.
<p>

<b>forum.search.url</b><br>
The url to access the forum search engine.
<p>


<b>forum.subscribe.label</b><br>
The default label for forum.subscribe.url.
<p>

<b>forum.subscribe.url</b><br>
The url to subscribe to this forum.
<p>

<b>forum.unsubscribe.label</b><br>
The default label for forum.subscribe.url.
<p>

<b>forum.unsubscribe.url</b><br>
The url to unsubscribe from this forum.
<p>

<b>user.isSubscribed</b><br>
A conditional indicating whether the current user is subscribed to this forum.
<p>

<b>user.isModerator</b><br>
A conditional indicating whether the current user is a moderator for this forum.
<p>

<b>user.canPost</b><br>
A conditional indicating whether the current user has the privileges necessary to post to this forum.
<p>

<b>thread.sortby.date.url</b><br>
A url that will change the sorting options to be sorted by date.
<p>

<b>thread.sortedby.date</b><br>
A conditional indicating that the thread is currently sorted by date.
<p>

<b>thread.sortby.lastreply.url</b><br>
A url that will change the sorting options to be sorted by the date of the last reply to the thread.
<p>

<b>thread.sortedby.lastreply</b><br>
A conditional indicating that the thread is currently sorted by last reply.
<p>

<b>thread.sortby.views.url</b><br>
A url that will change the sorting options to be sorted by the number of views each thread has.
<p>

<b>thread.sortedby.views</b><br>
A conditional indicating that the thread is currently sorted by views.
<p>

<b>thread.sortby.replies.url</b><br>
A url that will change the sorting options to be sorted by the number of replies a thread has.
<p>

<b>thread.sortedby.replies</b><br>
A conditional indicating that the thread is currently sorted by replies.
<p>

<b>thread.sortby.rating.url</b><br>
A url that will change the sorting options to be sorted by the average rating of each thread.
<p>

<b>thread.sortedby.rating</b><br>
A conditional indicating that the thread is currently sorted by rating.
<p>

<b>thread.sorted.asc</b><br>
A conditional indicating that the thread is currently sorted in an ascending manner.
<p>

<b>thread.sorted.desc</b><br>
A conditional indicating that the thread is currently sorted in an descending manner.
<p>

<b>thread.subject.label</b><br>
A label for the subject column.
<p>

<b>thread.date.label</b><br>
A label for the date column.
<p>

<b>thread.user.label</b><br>
A label for the author column.
<p>

<b>thread.views.label</b><br>
A label for the views column.
<p>

<b>thread.replies.label</b><br>
A label for the replies column.
<p>

<b>thread.rating.label</b><br>
A label for the rating column.
<p>

<b>thread.last.label</b><br>
A label for the last reply column.
<p>

<b>firstpage</b><br>
A link to the first page in a multi-page listing.
<p>

<b>lastpage</b><br>
A link to the last page in a multi-page listing.
<p>

<b>nextpage</b><br>
A link to the next page in a multi-page listing.
<p>

<b>pagelist</b><br>
A series of links to every page in a multi-page listing.
<p>

<b>previouspage</b><br>
A link to the previous page in a multi-page listing.
<p>

<b>multiplepages</b><br>
A conditional indicating whether there are multiple pages or not.
<p>

<b>numberOfPages</b><br>
The number of pages in a multiple page listing.
<p>

<b>pageNumber</b><br>
The number of the current page in a multi-page listing.
<p>

<b>thread_loop</b><br>
A loop containing all of the thread data.
<p>

<blockquote>

<b>thread.views</b><br>
The number of views this thread has had.
<p>

<b>thread.replies</b><br>
The number of replies this thread has had.
<p>

<b>thread.rating</b><br>
The average rating of all the posts in this thread.
<p>

<b>thread.rating_loop</b><br>
<p>
<blockquote>
<b>thread.rating_loop.count</b><br>
A counter for the rating. This can be used to "draw" a rating, such as adding a star for each rating, or some other visual approach.
<p>
</blockquote>

<b>thread.isSticky</b><br>
A conditional indicating whether the thread is sticky and hence will appear at the top of the forum listing.
<p>

<b>thread.isLocked</b><br>
A conditional indicating whether the thread is locked from new posts.
<p>

<b>thread.root.subject</b><br>
The subject of the root post in this thread.
<p>

<b>thread.root.url</b><br>
The url to view the root post.
<p>

<b>thread.root.epoch</b><br>
An epoch date of the root post.
<p>

<b>thread.root.date</b><br>
A human readable date for the root post.
<p>

<b>thread.root.time</b><br>
A human readable time for the root post.
<p>

<b>thread.root.user.id</b><br>
The root poster's user id.
<p>

<b>thread.root.user.name</b><br>
The username of the root poster.
<p>

<b>thread.root.user.alias</b><br>
The alias of the root poster.
<p>

<b>thread.root.user.profile</b><br>
The url of the root poster's profile.
<p>

<b>thread.root.user.isVisitor</b><br>
A conditional indicating whether the root poster was a visitor.
<p>

<b>thread.root.status</b><br>
The status of the root post.
<p>

<b>thread.last.subject</b><br>
The subject of the last post made to this thread.
<p>

<b>thread.last.url</b><br>
The url to the last post.
<p>

<b>thread.last.epoch</b><br>
The post time of the last post represented as an epoch.
<p>

<b>thread.last.date</b><br>
The human readable date of the last post.
<p>

<b>thread.last.time</b><br>
The human readable time of the last post.
<p>

<b>thread.last.user.profile</b><br>
The url of the last posters profile.
<p>

<b>thread.last.user.id</b><br>
The userId of the last poster.
<p>

<b>thread.last.user.name</b><br>
The username of the last poster.
<p>

<b>thread.last.user.isVisitor</b><br>
A conditional indicating whether the last poster was a visitor.
<p>

<b>thread.last.status</b><br>
The status of the last post.
<p>

<b>forum.title</b><br>
The title of this forum as passed by the calling object.
<p>

<b>forum.description</b><br>
The description of this forum as passed by the calling object.
<p>



</blockquote>
|,
		lastUpdated => 1101775435
	},

	'538' => {
		message => q|Karma Threshold|,
		lastUpdated => 1031514049
	},

	'554' => {
		message => q|Take Action|,
		lastUpdated => 1031514049
	},

	'starts with' => {
		message => q|Starts With|,
		lastUpdated => 1089039511
	},

	'680' => {
		message => q|Package, Add|,
		lastUpdated => 1038889471
	},

	'831' => {
		message => q|Collateral Macros|,
		lastUpdated => 1050441851
	},

	'552' => {
		message => q|Pending|,
		lastUpdated => 1031514049
	},

	'521' => {
		message => q|I would like to be notified via email to pager.|,
		lastUpdated => 1031514049
	},

	'162' => {
		message => q|Are you certain that you wish to purge all the pages and wobjects in the trash?|,
		lastUpdated => 1031514049
	},

	'880' => {
		message => q|Last Resort Editor|,
		lastUpdated => 1044705137
	},

	'780' => {
		message => q|File|,
		lastUpdated => 1036912946
	},

	'433' => {
		message => q|User Agent|,
		lastUpdated => 1031514049
	},

	'74' => {
		message => q|Account Information|,
		lastUpdated => 1031514049
	},

	'240' => {
		message => q|Message ID:|,
		lastUpdated => 1031514049
	},

	'334' => {
		message => q|Work Phone|,
		lastUpdated => 1031514049
	},

	'986' => {
		message => q|Back to database links.|,
		lastUpdated => 1056151382
	},

	'890' => {
		message => q|WebGUI has a sub-system that can create tabs. You'll see these in complex forms such as page editing. In order to make the tabs system look good and match your site, you'll need to add a section to your style's style sheet specifically for the tabs. 
<p>
The following style sheet classes are available:
<p>

<b>.tab</b><br>
The default look of each tab.
<p>

<b>div.tabs</b><br>
This also sets some properties for all of the tabs. This should be used for the text labels in the tabs.
<p>


<b>.tabBody</b><br>
The content area for each tab. This is where the form will show up. Note that for best results the background color of this should match the background color of .tabActive.
<p>


<b>.tabHover</b><br>
The look of a tab as the mouse hovers over it.
<p>

<b>.tabActive</b><br>
The look of the tab that is currently visible.
<p>



<i>Examples</i><br>
You can use these instead of creating your own if you wish. Or just use these as guidelines for creating your own.
<p>
<table width="100%"><tr><td valign="top">
<b>White or Light Colored Styles</b>
<pre>
.tab {
  border: 1px solid black;
   background-color: #eeeeee;
}
.tabBody {
   border: 1px solid black;
   border-top: 1px solid black;
   border-left: 1px solid black;
   background-color: #dddddd; 
}
div.tabs {
    line-height: 15px;
    font-size: 14px;
}
.tabHover {
   background-color: #cccccc;
}
.tabActive { 
   background-color: #dddddd; 
}
</pre>
</td><td valign="top">
<b>Black or Dark Colored Styles</b>
<pre>
.tab {
  border: 1px solid white;
   background-color: #333333;
}
.tabBody {
   border: 1px solid white;
   border-top: 1px solid white;
   border-left: 1px solid white;
   background-color: #444444; 
}
div.tabs {
    line-height: 15px;
    font-size: 14px;
}
.tabHover {
   background-color: #555555;
}
.tabActive { 
   background-color: #444444; 
}
</pre>
</td></tr></table>



|,
		lastUpdated => 1046067380
	},

	'786' => {
		message => q|WebGUI's collateral management system allows you to upload files and text to a central repository for use elsewhere in your site.
<p/>
You can organize collateral into different folders, but names must be unique, even if they are in different folders or of different types.  If you attempt to use a name that is already in use, WebGUI will rename the file for you by appending and/or incrementing a number to the end of the name.
<p/>
|,
		lastUpdated => 1099512407
	},

	'440' => {
		message => q|Contact Information|,
		lastUpdated => 1031514049
	},

	'230' => {
		message => q|Message|,
		lastUpdated => 1031514049
	},

	'1008' => {
		message => q|Mixed Text and HTML|,
		lastUpdated => 1060433234
	},

	'1027' => {
		message => q|Use content filters?|,
		lastUpdated => 1099434667
	},

	'103' => {
		message => q|Page Properties|,
		lastUpdated => 1046638742
	},

	'922' => {
		message => q|Created With|,
		lastUpdated => 1050262917
	},

	'871' => {
		message => q|Who can edit?|,
		lastUpdated => 1044218026
	},

	'841' => {
		message => q|Navigation Macros|,
		lastUpdated => 1096434024
	},

	'1044' => {
		message => q|Search Template|,
		lastUpdated => 1066394621
	},

	'1072' => {
		message => q|The email address is already in use. Please use a different email address.|,
		lastUpdated => 1068703399
	},

	'612' => {
		message => q|There is no need to ever actually delete a user. If you are concerned with locking out a user, then simply change their password. If you truly wish to delete a user, then please keep in mind that there are consequences. If you delete a user any content that they added to the site via wobjects (like message boards and user contributions) will remain on the site. However, if another user tries to visit the deleted user's profile they will get an error message. Also if the user ever is welcomed back to the site, there is no way to give him/her access to his/her old content items except by re-adding the user to the users table manually.
<p>


As with any delete operation, you are prompted to be sure you wish to proceed with the delete. If you answer yes, the delete will proceed and there is no recovery possible. If you answer no you'll be returned to the prior screen.
<p>

|,
		lastUpdated => 1101775447,
	},

	'902' => {
		message => q|Edit Theme|,
		lastUpdated => 1050190716
	},

	'936' => {
		message => q|Theme, Import|,
		lastUpdated => 1050436484
	},

	'827' => {
		message => q|Wobject Template|,
		lastUpdated => 1052046436
	},

	'91' => {
		message => q|Previous Page|,
		lastUpdated => 1031514049
	},

	'1086' => {
		message => q|Many wobjects have pagination features. Though some wobjects define their own pagination variables, most use a common set of pagination variables:

<p>

<b>pagination.firstPage</b><br>
A link to the first page in the paginator.
<p> 

<b>pagination.isFirstPage</b><br>
A boolean indicating whether the current page is the first page.
<p> 


<b>pagination.lastPage</b><br>
A link to the last page in the paginator.
<p> 

<b>pagination.isLastPage</b><br>
A boolean indicating whether the current page is the last page.
<p> 

<b>pagination.nextPage</b><br>
A link to the next page in the paginator relative to the current page.
<p> 

<b>pagination.previousPage</b><br>
A link to the previous page in the paginator relative to the current page.
<p> 

<b>pagination.pageNumber</b><br>
The current page number.
<p> 

<b>pagination.pageCount</b><br>
The total number of pages.
<p> 

<b>pagination.pageCount.isMultiple</b><br>
A boolean indicating whether there is more than one page.
<p> 

<b>pagination.pageList</b><br>
A list of links to every page in the paginator.
<p> 


<b>pagination.pageList.upTo20</b><br>
A list of links to the 20 nearest in the paginator relative to the current page. So if you're on page 60, you'll see links for 50-70.
<p> 

<b>pagination.pageList.upTo10</b><br>
A list of links to the 10 nearest in the paginator relative to the current page. So if you're on page 20, you'll see links for 15-25.
<p> 

|,
		lastUpdated => 1102031794,
	},

	'701' => {
		message => q|Week(s)|,
		lastUpdated => 1031514049
	},

	'820' => {
		message => q|Your account is not activated. Therefore you cannot log in until it's activated, which only can be done by the admin.|,
		lastUpdated => 1038431645
	},

	'174' => {
		message => q|Display the title?|,
		lastUpdated => 1031514049
	},

	'481' => {
		message => q|Telephone Number|,
		lastUpdated => 1031514049
	},

	'867' => {
		message => q|Loss of Privilege|,
		lastUpdated => 1044133143
	},

	'422' => {
		message => q|<h1>Login Failed</h1>The information supplied does not match the account.|,
		lastUpdated => 1031514049
	},

	'564' => {
		message => q|Who can post?|,
		lastUpdated => 1031514049
	},

	'905' => {
		message => q|Theme Designer|,
		lastUpdated => 1050191749
	},

	'817' => {
		message => q|Active|,
		lastUpdated => 1038431287
	},

	'563' => {
		message => q|Default Status|,
		lastUpdated => 1031514049
	},

	'731' => {
		message => q|2 Trained|,
		lastUpdated => 1033836651
	},

	'41' => {
		message => q|You're attempting to remove a vital component of the WebGUI system. If you were allowed to continue WebGUI may cease to function.|,
		lastUpdated => 1031514049
	},

	'668' => {
		message => q|Style Sheets, Using|,
		lastUpdated => 1046067403
	},

	'52' => {
		message => q|login|,
		lastUpdated => 1031514049
	},

	'750' => {
		message => q|Delete this user.|,
		lastUpdated => 1036864742
	},

	'657' => {
		message => q|User, Delete|,
		lastUpdated => 1031514049
	},

	'774' => {
		message => q|Are you certain you wish to delete this collateral? It cannot be recovered once deleted.|,
		lastUpdated => 1036902945
	},

	'229' => {
		message => q|Subject|,
		lastUpdated => 1031514049
	},

	'866' => {
		message => q|Expire Notification Message|,
		lastUpdated => 1101775465,
	},

	'768' => {
		message => q|Name|,
		lastUpdated => 1036892946
	},

	'503' => {
		message => q|Template ID|,
		lastUpdated => 1031514049
	},

	'770' => {
		message => q|Edit Snippet|,
		lastUpdated => 1036893050
	},

	'68' => {
		message => q|The account information you supplied is invalid. Either the account does not exist or the username/password combination was incorrect.|,
		lastUpdated => 1031514049
	},

	'315' => {
		message => q|Middle Name|,
		lastUpdated => 1031514049
	},

	'893' => {
		message => q|Wobject Properties|,
		lastUpdated => 1046638419
	},

	'338' => {
		message => q|Edit Profile|,
		lastUpdated => 1031514049
	},

	'838' => {
		message => q|Folders are used to organize collateral, much the same way you'd use folders on your hard drive or in a file cabinet.  Unlike files on your hard drive, collateral names must be unique, even if they are in different folders.
<p/>
<b>Organize in Folder</b><br/>
Folders can be inside of other folders. In which folder would you like to put this folder?
<p/>

<b>Name</b><br/>
Give this folder a name so you can recognize what's in it.
<p/>

<b>Description</b><br/>
Describe the folder so that you remember why you created it and what it's supposed to contain.
<p/>|,
		lastUpdated => 1094406796
	},

	'761' => {
		message => q|Add an image.|,
		lastUpdated => 1036892765
	},

	'576' => {
		message => q|Delete|,
		lastUpdated => 1031514049
	},

	'616' => {
		message => q|<b>Path to WebGUI Extras</b><br>
The web-path to the directory containing WebGUI images and javascript files.
<br><br>

<b>Maximum Attachment Size</b><br>
The maximum size of files allowed to be uploaded to this site. This applies to all wobjects that allow uploaded files and images (like Article and User Contributions). This size is measured in kilobytes.
<br><br>

<b>Thumbnail Size</b><br>
The size of the longest side of thumbnails. The thumbnail generation maintains the aspect ratio of the image. Therefore, if this value is set to 100, and you have an image that's 400 pixels wide and 200 pixels tall, the thumbnail will be 100 pixels wide and 50 pixels tall.
<p>
<i>Note:</i> Thumbnails are automatically generated as images are uploaded to the system.
<p>

<b>Web Attachment Path</b><br>
The web-path of the directory where attachments are to be stored.
<br><br>

<b>Server Attachment Path</b><br>
The local path of the directory where attachments are to be stored. (Perhaps /var/www/public/uploads) Be sure that the web server has the rights to write to that directory.
|,
		lastUpdated => 1031514049
	},

	'25' => {
		message => q|November|,
		lastUpdated => 1031514049
	},

	'640' => {
		message => q|It is not a good idea to delete templates as you never know what kind of adverse affect it may have on your site (some content may still be using the template). 
<p>

|,
		lastUpdated => 1038791020
	},

	'738' => {
		message => q|9 Guru|,
		lastUpdated => 1033836704
	},

	'870' => {
		message => q|Welcome|,
		lastUpdated => 1044139461
	},

	'484' => {
		message => q|Select List|,
		lastUpdated => 1031514049
	},

	'1078' => {
		message => q|There is already a user of this system with the email address you've entered.  Press "Save" if you still wish to create this user|,
		lastUpdated => 1067951807
	},

	'1036' => {
		message => q|Threads|,
		lastUpdated => 1066038155
	},

	'896' => {
		message => q|Cache Timeout (Visitors)|,
		lastUpdated => 1056292980
	},

	'928' => {
		message => q|Do you wish to import this theme?|,
		lastUpdated => 1050265284
	},

	'623' => {
		message => q|<a href="http://www.w3.org/Style/CSS/">Cascading Style Sheets (CSS)</a> are a great way to manage the look and feel of any web site. They are used extensively in WebGUI.
<p>


If you are unfamiliar with how to use CSS, <a href="http://www.plainblack.com/">Plain Black</a> provides training classes on XHTML and CSS. Alternatively, Bradsoft makes an excellent CSS editor called <a href="http://www.bradsoft.com/topstyle/index.asp">Top Style</a>.
<p>


The following is a list of classes used to control the default look of WebGUI. These of course can be overridden or replaced in the various templates that generate them.
<p>


<b>A</b><br>
The links throughout the style.
<p>


<b>BODY</b><br>
The default setup of all pages within a style.
<p>


<b>H1</b><br>
The headers on every page.
<p>


<b>.content</b><br>
The main content area on all pages of the style.
<p>


<b>.formDescription </b><br>
The tags on all forms next to the form elements. 
<p>


<b>.formSubtext </b><br>
The tags below some form elements.
<p>


<b>.highlight </b><br>
Denotes a highlighted item, such as which message you are viewing within a list.
<p>




<b>.pagination </b><br>
The Previous and Next links on pages with pagination.
<p>




<b>.tableData </b><br>
The data rows on things like message boards and user contributions.
<p>


<b>.tableHeader </b><br>
The headings of columns on things like message boards and user contributions.
<p>




<b>NOTE:</b> Some wobjects and macros have their own unique styles sheet classes, which are documented in their individual help files.
<p>


|,
		lastUpdated => 1070030223
	},

	'328' => {
		message => q|Home Phone|,
		lastUpdated => 1031514049
	},

	'1085' => {
		message => q|Pagination Template Variables|,
		lastUpdated => 1078243385
	},

	'777' => {
		message => q|Folder Id|,
		lastUpdated => 1036905972
	},

	'464' => {
		message => q|Text Area Columns|,
		lastUpdated => 1031514049
	},

	'363' => {
		message => q|Page Template Position|,
		lastUpdated => 1034736999
	},

	'46' => {
		message => q|My Account|,
		lastUpdated => 1031514049
	},

	'1051' => {
		message => q|Replace With|,
		lastUpdated => 1066418940
	},

	'733' => {
		message => q|4 Skilled|,
		lastUpdated => 1033836668
	},

	'562' => {
		message => q|Pending|,
		lastUpdated => 1031514049
	},

	'997' => {
		message => q|Database Links, Manage|,
		lastUpdated => 1056151382
	},

	'36' => {
		message => q|You must be an administrator to perform this function. Please contact one of your administrators. |,
		lastUpdated => 1058092984
	},

	'630' => {
		message => q|WebGUI has a small, but sturdy real-time search engine built-in. If you wish to use the internal search engine, you can use the ^?; macro, or by adding <i>?op=search</i> to the end of any URL, or feel free to build your own form to access it.
<p>
Many people need a search engine to index their WebGUI site, plus many others. Or they have more advanced needs than what WebGUI's search engine allows. In those cases we recommend <a href="http://www.mnogosearch.org/">MnoGo Search</a> or <a href="http://www.htdig.org/">ht://Dig</a>.
<p>

|,
		lastUpdated => 1038888957
	},

	'497' => {
		message => q|Start Date|,
		lastUpdated => 1031514049
	},

	'518' => {
		message => q|Inbox Notifications|,
		lastUpdated => 1031514049
	},

	'748' => {
		message => q|User Count|,
		lastUpdated => 1036553016
	},

	'472' => {
		message => q|Label|,
		lastUpdated => 1031514049
	},

	'362' => {
		message => q|SideBySide|,
		lastUpdated => 1031514049
	},

	'439' => {
		message => q|Personal Information|,
		lastUpdated => 1031514049
	},

	'317' => {
		message => q|<a href="http://www.icq.com">ICQ</a> UIN|,
		lastUpdated => 1031514049
	},

	'608' => {
		message => q|Deleting a page can create a big mess if you are uncertain about what you are doing. When you delete a page you are also deleting the content it contains, all sub-pages connected to this page, and all the content they contain. Be certain that you have already moved all the content you wish to keep before you delete a page.
<p>

As with any delete operation, you are prompted to be sure you wish to proceed with the delete. If you answer yes, the delete will proceed and there is no recovery possible. If you answer no you'll be returned to the prior screen.
<p>
|,
		lastUpdated => 1031514049
	},

	'169' => {
		message => q|Add a new user.|,
		lastUpdated => 1031514049
	},

	'411' => {
		message => q|Menu Title|,
		lastUpdated => 1031514049
	},

	'705' => {
		message => q|Minute(s)|,
		lastUpdated => 1031514049
	},

	'478' => {
		message => q|URL|,
		lastUpdated => 1031514049
	},

	'892' => {
		message => q|Discussion|,
		lastUpdated => 1046637952
	},

	'384' => {
		message => q|File|,
		lastUpdated => 1031514049
	},

	'836' => {
		message => q|Snippets are bits of text that may be reused on your site. Thinks like java scripts, style sheets, flash animations, or even slogans are all great snippets. Best of all, if you need to change the text, you can change it in only one location.
<p/>
<b>Name</b><br/>
Give your snippet a unique name that you can use later to retrieve it.
<p/>

<b>Organize in Folder</b><br/>
Which collateral folder should contain this snippet?
<p/>

<b>Snippet</b><br/>
Start typing! Or better yet, copy the snippet from some other electronic document and paste it here.
<p/>|,
		lastUpdated => 1101775475,
	},

	'942' => {
		message => q|Radio List|,
		lastUpdated => 1051464141
	},

	'955' => {
		message => q|System Clipboard|,
		lastUpdated => 1099360884
	},

	'407' => {
		message => q|Click here to register.|,
		lastUpdated => 1031514049
	},

	'537' => {
		message => q|Karma|,
		lastUpdated => 1031514049
	},

	'18' => {
		message => q|April|,
		lastUpdated => 1031514049
	},

	'376' => {
		message => q|Package|,
		lastUpdated => 1031514049
	},

	'785' => {
		message => q|Collateral, Manage|,
		lastUpdated => 1050430118
	},

	'125' => {
		message => q|Company Name|,
		lastUpdated => 1031514049
	},

	'522' => {
		message => q|I would like to be notified via ICQ.|,
		lastUpdated => 1031514049
	},

	'1018' => {
		message => q|Start a new thread|,
		lastUpdated => 1065279960
	},

	'44' => {
		message => q|Yes, I'm sure.|,
		lastUpdated => 1031514049
	},

	'1007' => {
		message => q|Content Type|,
		lastUpdated => 1060432032
	},

	'667' => {
		message => q|Group, Add/Edit|,
		lastUpdated => 1031514049
	},

	'998' => {
		message => q|Database Link, Add/Edit|,
		lastUpdated => 1056151382
	},

	'95' => {
		message => q|Help Index|,
		lastUpdated => 1031514049
	},

	'923' => {
		message => q|Theme Version|,
		lastUpdated => 1050262964
	},

	'313' => {
		message => q|Allow miscellaneous information?|,
		lastUpdated => 1031514049
	},

	'231' => {
		message => q|Posting New Message...|,
		lastUpdated => 1031514049
	},

	'779' => {
		message => q|Image|,
		lastUpdated => 1036912938
	},

	'551' => {
		message => q|Notice|,
		lastUpdated => 1031514049
	},

	'529' => {
		message => q|results per page|,
		lastUpdated => 1066492301
	},

	'148' => {
		message => q|Wobjects|,
		lastUpdated => 1045312362
	},

	'753' => {
		message => q|Edit this group.|,
		lastUpdated => 1036866979
	},

	'343' => {
		message => q|View profile.|,
		lastUpdated => 1031514049
	},

	'504' => {
		message => q|Template|,
		lastUpdated => 1031514049
	},

	'697' => {
		message => q|Karma, Using|,
		lastUpdated => 1031514049
	},

	'1058' => {
		message => q|Forum Post Template|,
		lastUpdated => 1066576785
	},

	'987' => {
		message => q|Delete Database Link|,
		lastUpdated => 1056151382
	},

	'857' => {
		message => q|IP Address|,
		lastUpdated => 1043878310
	},

	'1010' => {
		message => q|Text|,
		lastUpdated => 1060433369
	},

	'707' => {
		message => q|Show debugging?|,
		lastUpdated => 1031514049
	},

	'964' => {
		message => q|Manage system trash.|,
		lastUpdated => 1052850265
	},

	'65' => {
		message => q|Please deactivate my account permanently.|,
		lastUpdated => 1031514049
	},

	'935' => {
		message => q|The file you uploaded does not appear to be a valid theme file.|,
		lastUpdated => 1050431137
	},

	'908' => {
		message => q|Are you certain you wish to remove this component from this theme?|,
		lastUpdated => 1050230878
	},

	'81' => {
		message => q|Account updated successfully!|,
		lastUpdated => 1031514049
	},

	'1023' => {
		message => q|Unsubscribe from discussion|,
		lastUpdated => 1065875186
	},

	'321' => {
		message => q|Cell Phone|,
		lastUpdated => 1031514049
	},

	'86' => {
		message => q|Are you certain you wish to delete this group? Beware that deleting a group is permanent and will remove all privileges associated with this group.|,
		lastUpdated => 1031514049
	},

	'792' => {
		message => q|Templates|,
		lastUpdated => 1036971696
	},

	'624' => {
		message => q|WebGUI macros are used to create dynamic content within otherwise static content. For instance, you may wish to show which user is logged in on every page, or you may wish to have a dynamically built menu or crumb trail. 
<p>

Macros always begin with a caret (&#94;) and follow with at least one other character and ended with a semicolon (;). Some macros can be extended/configured by taking the format of <b>&#94;x</b>("<i>config text</i>");.  When providing  multiple arguments to a macro, they should be separated by only commas:<br>
<b>&#94;x</b>(<i>"First argument",2</i>);
<p>

|,
		lastUpdated => 1101885876,
	},

	'823' => {
		message => q|Go to the new page.|,
		lastUpdated => 1038706332
	},

	'903' => {
		message => q|Theme ID|,
		lastUpdated => 1050190880
	},

	'371' => {
		message => q|Add Grouping|,
		lastUpdated => 1031514049
	},

	'1079' => {
		message => q|Printable Style|,
		lastUpdated => 1073152790
	},

	'1041' => {
		message => q|Unlock|,
		lastUpdated => 1066073967
	},

	'729' => {
		message => q|0 Beginner|,
		lastUpdated => 1033836631
	},

	'2' => {
		message => q|Page|,
		lastUpdated => 1031514049
	},

	'771' => {
		message => q|Snippet|,
		lastUpdated => 1036893079
	},

	'435' => {
		message => q|Session Signature|,
		lastUpdated => 1031514049
	},

	'401' => {
		message => q|Are you certain you wish to delete this message and all messages under it in this thread?|,
		lastUpdated => 1031514049
	},

	'808' => {
		message => q|Email this group.|,
		lastUpdated => 1037579487
	},

	'845' => {
		message => q|Style Macros|,
		lastUpdated => 1078243435
	},

	'924' => {
		message => q|Import a theme.|,
		lastUpdated => 1050262993
	},

	'885' => {
		message => q|Allow users to deactivate their account?|,
		lastUpdated => 1044708760
	},

	'884' => {
		message => q|Pop Up|,
		lastUpdated => 1044705337
	},

	'147' => {
		message => q|Pages|,
		lastUpdated => 1031514049
	},

	'973' => {
		message => q|If proxied, use real client IP address?|,
		lastUpdated => 1053459227
	},

	'339' => {
		message => q|Male|,
		lastUpdated => 1031514049
	},

	'760' => {
		message => q|Delete this folder.|,
		lastUpdated => 1036892740
	},

	'1046' => {
		message => q|Archived|,
		lastUpdated => 1066406723
	},

	'863' => {
		message => q|Delete Offset|,
		lastUpdated => 1044126633
	},

	'749' => {
		message => q|Track page statistics?|,
		lastUpdated => 1036736182
	},

	'531' => {
		message => q|with the <b>exact phrase</b>|,
		lastUpdated => 1031514049
	},

	'829' => {
		message => q|Page Template|,
		lastUpdated => 1038870260
	},

	'345' => {
		message => q|Not A Member|,
		lastUpdated => 1031514049
	},

	'915' => {
		message => q|File|,
		lastUpdated => 1050232294
	},

	'319' => {
		message => q|<a href="http://messenger.msn.com/">MSN Messenger</a> Id|,
		lastUpdated => 1031514049
	},

	'1052' => {
		message => q|Edit Content Filter|,
		lastUpdated => 1066418983
	},

	'735' => {
		message => q|6 Professional|,
		lastUpdated => 1033836686
	},

	'404' => {
		message => q|First Page|,
		lastUpdated => 1031514049
	},

	'516' => {
		message => q|Turn Admin On!|,
		lastUpdated => 1031514049
	},

	'613' => {
		message => q|<p>Users are the accounts in the system that are given rights to do certain things. There are two default users built into the system: Admin and Visitor.
</p>

<p><i>Admin</i><br>
Admin is exactly what you'd expect. It is a user with unlimited rights in the WebGUI environment. If it can be done, this user has the rights to do it.
</p>

<p><i>Visitor</i><br>
Visitor is exactly the opposite of Admin. Visitor has no rights what-so-ever. By default any user who is not logged in is seen as the user Visitor.
</p>

<p><b>Add a new user.</b><br>
Click on this to go to the add user screen.
</p>

<p><b>Search</b><br>
You can search users based on username and email address. You can do partial searches too if you like.</p>|,
		lastUpdated => 1102660904,
	},

	'1043' => {
		message => q|Archive After|,
		lastUpdated => 1066394455
	},

	'669' => {
		message => q|Macros, Using|,
		lastUpdated => 1046656837
	},

	'1082' => {
		message => q|Clipboard|,
		lastUpdated => 1076866475
	},

	'974' => {
		message => q|Users can add themselves?|,
		lastUpdated => 1053778912
	},

	'420' => {
		message => q|Remove nothing.|,
		lastUpdated => 1046637549
	},

	'1066' => {
		message => q|These are the template variables available to the post form template.
<p>

<b>newpost.header</b><br>
The default label for the heading of this form.
<p>

<b>newpost.isNewThread</b><br>
A conditional indicating whether this post is a new thread.
<p>

<b>newpost.isReply</b><br>
A conditional indicating whether this post is a reply.
<p>

<b>NOTE:</b> If the post is a reply, then the template variables from the post template are included and populated with the data from the original message.
<p>

<b>newpost.isEdit</b><br>
A conditional indicating whether this post is an edit of an existing post.
<p>

<b>user.isVisitor</b><br>
A conditional indicating whether the current user is a visitor.
<p>

<b>newpost.isNewMessage</b><br>
A conditional basically opposite of newpost.isEdit.
<p>

<b>form.begin</b><br>
The form header.
<p>

<b>sticky.label</b><br>
The default label for sticky.form.
<p>

<b>sticky.form</b><br>
A form element for making the thread sticky.
<p>

<b>subscribe.label</b><br>
The default label for subscribe.form.
<p>

<b>subscribe.form</b><br>
A form element for subscribing to the thread.
<p>

<b>lock.label</b><br>
The default label for lock.form.
<p>

<b>lock.form</b><br>
A form element for locking the thread.
<p>

<b>contenttype.label</b><br>
The default label for contentType.form.
<p>

<b>contentType.form</b><br>
A form element for selecting what type of content is being posted.
<p>

<b>user.isModerator</b><br>
A conditional indicating whether the current user is a moderator.
<p>

<b>allowReplacements</b><br>
A conditional indicating whether this forum uses content filters.
<p>


<b>message.label</b><br>
The default label for message.form.
<p>

<b>message.form</b><br>
The form element for the user to enter their message.
<p>

<b>visitorName.label</b><br>
The default label for visitorName.form.
<p>

<b>visitorName.form</b><br>
A form element that allows the user to enter a display name if they are a visitor.
<p>

<b>form.submit</b><br>
The submit button for the form.
<p>

<b>subject.label</b><br>
The default label for subject.form.
<p>

<b>subject.form</b><br>
A form element that allows users to enter a subject for their message.
<p>


<b>form.end</b><br>
The form footer.
<p>

|,
		lastUpdated => 1101775486,
	},

	'702' => {
		message => q|Month(s)|,
		lastUpdated => 1031514049
	},

	'952' => {
		message => q|Clipboard Date|,
		lastUpdated => 1052850265
	},

	'639' => {
		message => q|<b>Template Name</b><br/>
Give this template a descriptive name so that you'll know what it is when you're applying a template to content.
<p/>

<b>Namespace</b><br/>
What type of template is this?
<p/>

<b>Template</b><br/>
Create your template by using template commands and variables, macros, and HTML.
<p/>

<b>NOTE:</b> You should never edit the default templates that come with WebGUI as they are subject to change with each new release. Instead, copy the template you wish to edit, and edit the copy.|,
		lastUpdated => 1038890615
	},

	'989' => {
		message => q|on page|,
		lastUpdated => 1056151382
	},

	'1071' => {
		message => q|Env HTTP Host|,
		lastUpdated => 1066641511
	},

	'487' => {
		message => q|Possible Values|,
		lastUpdated => 1031514049
	},

	'873' => {
		message => q|Subscribe to thread|,
		lastUpdated => 1065876827
	},

	'636' => {
		message => q|To create a package follow these simple steps:

<ol>
<li> From the admin menu select "Manage packages."
</li>

<li> Add a page and give it a name. The name of the page will be the name of the package.
</li>

<li> Go to the new page you created and start adding pages and wobjects. Any pages or wobjects you add will be created each time this package is deployed. 
</li>
</ol>

<b>Notes:</b><br>
In order to add, edit, or delete packages you must be in the Package Mangers group or in the Admins group.
<br><br>

If you add content to any of the wobjects, that content will automatically be copied when the package is deployed.
<br><br>

Privileges and styles assigned to pages in the package will not be copied when the package is deployed. Instead the pages will take the privileges and styles of the area to which they are deployed.
<p>
|,
		lastUpdated => 1038889481
	},

	'577' => {
		message => q|Post Reply|,
		lastUpdated => 1031514049
	},

	'561' => {
		message => q|Denied|,
		lastUpdated => 1031514049
	},

	'448' => {
		message => q|Page Tree|,
		lastUpdated => 1031514049
	},

	'357' => {
		message => q|News|,
		lastUpdated => 1031514049
	},

	'852' => {
		message => q|Copy this template.|,
		lastUpdated => 1039926448
	},

	'63' => {
		message => q|Turn admin on.|,
		lastUpdated => 1031514049
	},

	'455' => {
		message => q|Edit User's Profile|,
		lastUpdated => 1031514049
	},

	'80' => {
		message => q|Account created successfully!|,
		lastUpdated => 1031514049
	},

	'336' => {
		message => q|Birth Date|,
		lastUpdated => 1031514049
	},

	'457' => {
		message => q|Edit this user.|,
		lastUpdated => 1099014049
	},

	'821' => {
		message => q|Any|,
		lastUpdated => 1038432387
	},

	'696' => {
		message => q|Trash, Empty|,
		lastUpdated => 1031514049
	},

	'963' => {
		message => q|Trash Date|,
		lastUpdated => 1052850265
	},

	'ends with' => {
		message => q|Ends With|,
		lastUpdated => 1089039511
	},

	'92' => {
		message => q|Next Page|,
		lastUpdated => 1031514049
	},

	'938' => {
		message => q|Theme, Delete|,
		lastUpdated => 1050437207
	},

	'879' => {
		message => q|Classic Editor (Internet Explorer 5+)|,
		lastUpdated => 1044705103
	},

	'980' => {
		message => q|Empty this folder.|,
		lastUpdated => 1055908341
	},

	'10' => {
		message => q|Manage trash.|,
		lastUpdated => 1031514049
	},
	'505' => {
		message => q|Add a new template.|,
		lastUpdated => 1031514049
	},

	'670' => {
		message => q|Image, Add/Edit|,
		lastUpdated => 1038871530
	},

	'929' => {
		message => q|Import!|,
		lastUpdated => 1050265357
	},

	'958' => {
		message => q|The clipboard is a special system location to which content may be temporarily cut or copied.  Items in the clipboard may then be pasted to a new location.
<p>The clipboard contents may be managed individually. You may delete or paste an item by selecting the appropriate icon.  You may also empty the entire contents of the clipboard to the trash by choosing the Empty clipboard menu option.
<p><b>Title</b><br>The name of the item in the clipboard.  You may view the item by selecting the title.
<p><b>Type</b><br>The type of content.  For instance, a Page, Article, EventsCalendar, etc.
<p><b>Clipboard Date</b><br>The date and time the item was added to the clipboard
<p><b>Previous Location</b><br>The location where the item was previously found.  You may view the previous location by selecting the location.<p><b>Username</b><br>The username of the individual who placed the item in the clipboard.  This optional field is only visible in shared clipboard environments or when an administrator is managing the system clipboard.|,
		lastUpdated => 1101775494,
	},

	'419' => {
		message => q|Remove everything but the text.|,
		lastUpdated => 1046637533
	},

	'995' => {
		message => q|Database Password|,
		lastUpdated => 1056151382
	},

	'837' => {
		message => q|Folder, Add/Edit|,
		lastUpdated => 1038871918
	},

	'149' => {
		message => q|Users|,
		lastUpdated => 1031514049,
                context => q|Title of the user manager for the admin console.|
	},

	'625' => {
		message => q|Upload any images that you'll possibly use in more than one location on your site.  Image collateral differ from regular file collateral in that thumbnails can be displayed instead of icons and additional parameters can be added to the HTML tag when they are displayed.
<p/>

<b>Name</b><br>
The label that this image will be referenced by to include it into pages.
<p>

<b>Organize In Folder</b><br/>
Which collateral folder should this image be placed in.
<p/>

<b>File</b><br>
Select a file from your local drive to upload to the server.
<p>

<b>Parameters</b><br>
Add any HTML &lt;img&gt; parameters that you wish to act as the defaults for this image.
<p>

<i>Example:</i><br>
align="right"<br>
alt="This is an image"<br>
<p/>

<b>Thumbnail Size</b><br>
How big (in pixels) should the thumbnail for this image be?
<p/>|,
		lastUpdated => 1096524176
	},

	'304' => {
		message => q|Language|,
		lastUpdated => 1031514049
	},

	'406' => {
		message => q|Thumbnail Size|,
		lastUpdated => 1031514049
	},

	'482' => {
		message => q|Number (Integer)|,
		lastUpdated => 1031514049
	},

	'949' => {
		message => q|Manage clipboard.|,
		lastUpdated => 1052850265
	},

	'56' => {
		message => q|Email Address|,
		lastUpdated => 1031514049
	},

	'499' => {
		message => q|Wobject ID|,
		lastUpdated => 1031514049
	},

	'530' => {
		message => q|with <b>all</b> the words|,
		lastUpdated => 1031514049
	},

	'66' => {
		message => q|Log In|,
		lastUpdated => 1031514049
	},

	'19' => {
		message => q|May|,
		lastUpdated => 1031514049
	},

	'54' => {
		message => q|Create Account|,
		lastUpdated => 1031514049
	},

	'1030' => {
		message => q|by|,
		lastUpdated => 1047842270
	},

	'763' => {
		message => q|Add a snippet.|,
		lastUpdated => 1036892785
	},

	'70' => {
		message => q|Error|,
		lastUpdated => 1031514049
	},

	'470' => {
		message => q|Name|,
		lastUpdated => 1031514049
	},

	'1047' => {
		message => q|Add a content filter.|,
		lastUpdated => 1066418669
	},

	'839' => {
		message => q|Programmer Macros|,
		lastUpdated => 1078570360
	},

	'1055' => {
		message => q|WebGUI has a very powerful built-in discussion system called Forums. Forums are
        contained by the Message Board wobject, and may also be added to other wobjects
        such as Articles or USS's.
<p>
Forums (aka Discussions) have many settable properties. The following is a comprehensive list:
<p>

<b>Forum Template</b><br>
A template that controls the layout of the forum view.
<p>

<b>Thread Template</b><br>
A template that controls the layout of the thread view.
<p>

<b>Post Template</b><br>
A template that controls the layout of the post view.
<p>

<b>Search Template</b><br>
A template that controls the layout of the search engine interface and search results.
<p>

<b>Post Form Template</b><br>
A template that controls the form that users see when posting a new message.
<p>

<b>Post Preview Template</b><br>
A template that controls the layout of the preview of a message posting.
<p>

<b>Use Post Preview</b><br>
If set to yes a preview of the posted message will be shown before adding it to the forum.
<p>

<b>Notification Template</b><br>
A template that controls the layout of subscription notification messages sent to users.
<p>

<b>Archive After</b><br>
If a thread hasn't had a new message after this interval has expired then it will be flagged as "archived" and will only be accessible via the search engine.
<p>

<b>Edit Timeout</b><br>
The interval of time that the user has to edit their message after their initial post.
<p>
<i>NOTE:</i> Don't set this limit too high. One of the great things about discussions is that they are an accurate record of who said what. If you allow editing for a long time, then a user has a chance to go back and change his/her mind a long time after the original statement was made.
<p>

<b>Add edit stamp to posts?</b><br>
If set to yes then a string will be added to the bottom of a post each time its edited.
<p>

<b>Allow rich edit?</b><br>
If set to yes then users will be able to use a rich editor when writing their posts.
<p>

<b>Use content filters?</b><br>
If set to yes then content filters will be applied to the post. Content filters can be managed from the settings.
<p>

<b>Filter Post</b><br>
Select what types of content you will filter from a user's post.
<p>

<b>Threads Per Page</b><br>
The number of threads to display on a single page in a forum.
<p>

<b>Posts Per Page</b><br>
The number of posts (within a thread) to display on a single page.
<p>

<b>Who can view?</b><br>
A group that is allowed to view messages.
<p>

<b>Karma Per Post</b><br>
How much karma should be given to a user when they post a message?  Note, karma
must be enabled in the Admin Console -> Settings -> User form for property to
be present. 
<p>

<b>Who can post?</b><br>
A group that is allowed to post new messages.
<p>

<b>Moderate posts?</b><br>
If set to yes then posts will be set to pending by default and will not be displayed until a moderator approves the message.
<p>

<b>Who can moderate?</b><br>
A group that is allowed to moderate messages.
<p>

<b>Move Forum (Message Board only)</b><br>
You can move an existing forum to another Message Board. If set to 'No Change' the forum will stay at the current board.  This option is only available when editing an existing Forum.
<p>
|,
		lastUpdated => 1101775516,
	},

	'793' => {
		message => q|Pieces of Collateral|,
		lastUpdated => 1036971785
	},

	'88' => {
		message => q|Users In Group|,
		lastUpdated => 1031514049
	},

	'1009' => {
		message => q|HTML|,
		lastUpdated => 1060433286
	},

	'141' => {
		message => q|Not Found Page|,
		lastUpdated => 1031514049
	},

	'30' => {
		message => q|Wednesday|,
		lastUpdated => 1031514049
	},

	'909' => {
		message => q|Add Theme Component|,
		lastUpdated => 1050232207
	},

	'403' => {
		message => q|Prefer not to say.|,
		lastUpdated => 1031514049
	},

	'883' => {
		message => q|Inline (when supported)|,
		lastUpdated => 1044705322
	},

	'134' => {
		message => q|Recover Password Message|,
		lastUpdated => 1031514049
	},

	'75' => {
		message => q|Your account information has been sent to your email address.|,
		lastUpdated => 1031514049
	},

	'618' => {
		message => q|<b>SMTP Server</b><br>
This is the address of your local mail server. It is needed for all features that use the Internet email system (such as password recovery).
<p>
Optionally, if you are running a sendmail server on the same machine as WebGUI, you can also specify a path to your sendmail executable. On most Linux systems this can be found at "/usr/lib/sendmail".

<p>
<b>Email Footer</b><br/>
This footer will be processed for macros and attached to every email sent from this WebGUI instance.
<p/>

<b>Alert on new user?</b><br>
Should someone be alerted when a new user registers anonymously?
<p>

<b>Group To Alert On New User</b><br>
What group should be alerted when a new user registers?
<p>

|,
		lastUpdated => 1044709143
	},

	'848' => {
		message => q|There is a syntax error in this template. Please correct.|,
		lastUpdated => 1039892202
	},

	'655' => {
		message => q|User, Add/Edit|,
		lastUpdated => 1076700945
	},

	'59' => {
		message => q|I forgot my password.|,
		lastUpdated => 1031514049
	},

	'421' => {
		message => q|Remove everything except basic formating.|,
		lastUpdated => 1046611728
	},

	'450' => {
		message => q|Work Name (Company Name)|,
		lastUpdated => 1031514049
	},

	'1070' => {
		message => q|Config Sitename|,
		lastUpdated => 1066641473
	},

	'1024' => {
		message => q|Filter Post|,
		lastUpdated => 1046607477
	},

	'1060' => {
		message => q|Forum Thread Template|,
		lastUpdated => 1066578513
	},

	'703' => {
		message => q|Year(s)|,
		lastUpdated => 1031514049
	},

	'864' => {
		message => q|Expire Notification Offset|,
		lastUpdated => 1044126838
	},

	'900' => {
		message => q|Manage themes.|,
		lastUpdated => 1050189066
	},

	'1016' => {
		message => q|Replies|,
		lastUpdated => 1031514049
	},

	'url extension' => {
		message => q|URL Extension|,
		lastUpdated => 1089039511
	},

	'318' => {
		message => q|<a href="http://www.aol.com/aim/homenew.adp">AIM</a> Id|,
		lastUpdated => 1031514049
	},

	'972' => {
		message => q|Date and Time|,
		lastUpdated => 1053278234
	},

	'105' => {
		message => q|Display|,
		lastUpdated => 1046638916
	},

	'799' => {
		message => q|Page Views|,
		lastUpdated => 1036978804
	},

	'925' => {
		message => q|You already have another version of this theme installed. You must delete it before installing it again.|,
		lastUpdated => 1050264954
	},

	'840' => {
		message => q|These macros are designed to provide programming-like functionality. They are powerful when used appropriately, and dangerous when used carelessly. Take care when using these macros.

<p>
<b>NOTE:</b> These macros are included in WebGUI in order to provide very powerful display mechanisms. Though they could be used to write simple web applications, this is not their intended use, nor is it supported or condoned by Plain Black. If you find yourself trying to do something like that, just write a macro. =) <b>By default these macros are disabled to protect the security of your site and server, and only your administrator can enable them.</b>

<p/>

<b>&#94;D; or &#94;D(); - Date</b><br>
The current date and time.
<p>

You can configure the date by using date formatting symbols. For instance, if you created a macro like this <b>&#94;D("%c %D, %y");</b> it would output <b>September 26, 2001</b>. The following are the available date formatting symbols:
<p>

<table><tbody><tr><td>%%</td><td>%</td></tr><tr><td>%y</td><td>4 digit year</td></tr><tr><td>%Y</td><td>2 digit year</td></tr><tr><td>%m</td><td>2 digit month</td></tr><tr><td>%M</td><td>variable digit month</td></tr><tr><td>%c</td><td>month name</td></tr><tr><td>%d</td><td>2 digit day of month</td></tr><tr><td>%D</td><td>variable digit day of month</td></tr><tr><td>%w</td><td>day of week name</td></tr><tr><td>%h</td><td>2 digit base 12 hour</td></tr><tr><td>%H</td><td>variable digit base 12 hour</td></tr><tr><td>%j</td><td>2 digit base 24 hour</td></tr><tr><td>%J</td><td>variable digit base 24 hour</td></tr><tr><td>%p</td><td>lower case am/pm</td></tr><tr><td>%P</td><td>upper case AM/PM</td></tr><tr><td>%z</td><td>user preference date format</td></tr><tr><td>%Z</td><td>user preference time format</td></tr></tbody></table>
<p>
You can also pass in an epoch date into this macro as a secondary parameter. If no date is specified then today's date and time will be used.

<p>
<b>&#94;Env()</b><br>
Can be used to display a web server environment variable on a page. The environment variables available on each server are different, but you can find out which ones your web server has by going to: http://www.yourwebguisite.com/env.pl
<p>

The macro should be specified like this &#94;Env("REMOTE_ADDR");
<p>

<b>&#94;Execute();</b><br>
Allows a content manager or administrator to execute an external program. Takes the format of <b>&#94;Execute("/this/file.sh");</b>.
<p>


<b>&#94;FormParam();</b><br>
This macro is mainly used in generating dynamic queries in SQL Reports. Using this macro you can pull the value of any form field simply by specifying the name of the form field, like this: &#94;FormParam("phoneNumber");
<p>


<b>&#94;If();</b><br>
A simple conditional statement (IF/THEN/ELSE) to control layout and messages.
<p>
<i>Examples:</i><br>
Display Happy New Year on 1st January:
      &#94;If('&#94;D("%m%d");' eq '0101' , Happy New Year);
<p>
Display a message to people on your subnet (192.168.1.*):<br>
&#94;If('&#94;Env("REMOTE_ADDR");' =~ /&#94;192.168.1/,"Hi co-worker","Hi Stranger");
<p>
Display a message to Windows users:<br>
      &#94;If('&#94;URLEncode("&#94;Env("HTTP_USER_AGENT");");' =~ /windows/i,"Hey... Linux is free !");
<p>
Display a message if a user is behind a proxy:<br>
      &#94;If('&#94;Env("HTTP_VIA");' ne "", You're behind a proxy !, Proxy-free is the best...);
<p>
Display Good Morning/Afternoon/Evening:<br>
      &#94;If(&#94;D("%J");<=12,Good Morning,&#94;If(&#94;D("%J");<=18,Good Afternoon,Good evening););
<p>

<b>&#94;Include();</b><br>
Allows a content manager or administrator to include a file from the local filesystem. 
<p/>
<i>Example:</i> &#94;Include("/this/file.html");
<p>

<b>&#94;International();</b><br/>
Pull a translated message from the internationalization system.
<p/>
<i>Example:</i> &#94;International(45,"Article");
<p/>


<b>&#94;Quote();</b><br>
Use this to escape a string before using it in a database query.
<p>


<b>&#94;Page();</b><br>
This can be used to retrieve information about the current page. For instance it could be used to get the page URL like this &#94;Page("urlizedTitle"); or to get the menu title like this &#94;Page("menuTitle");.
<p>

<b>&#94;SQL();</b><br>
A one line SQL report. Sometimes you just need to pull something back from the database quickly. This macro is also useful in extending the SQL Report wobject. It uses the numeric macros (&#94;0; &#94;1; &#94;2; etc) to position data and can also use the ^&#94;rownum; macro just like the SQL Report wobject. Examples:<p>
 &#94;SQL("select count(*) from users","There are &#94;0; users on this system.");
<p>
&#94;SQL("select userId,username from users order by username","&lt;a href='^/;?op=viewProfile&uid=&#94;0;'&gt;^1;&lt;/a&gt;&lt;br&gt;");
<p>
<b>&#94;URLEncode();</b><br>
This macro is mainly useful in SQL reports, but it could be useful elsewhere as well. It takes the input of a string and URL Encodes it so that the string can be passed through a URL. It's syntax looks like this: &#94;URLEncode("Is this my string?");
<p>


<b>&#94;User();</b><br>
This macro will allow you to display any information from a user's account or profile. For instance, if you wanted to display a user's email address you'd create this macro: &#94;User("email");
<p>

<b>&#94;*; or &#94;*(); - Random Number</b><br>
A randomly generated number. This is often used on images (such as banner ads) that you want to ensure do not cache. In addition, you may configure this macro like this <b>&#94;*(100);</b> to create a random number between 0 and 100.
<p>

|,
		lastUpdated => 1101775527,
	},

	'146' => {
		message => q|Active Sessions|,
		lastUpdated => 1031514049
	},

	'1042' => {
		message => q|Posts Per Page|,
		lastUpdated => 1066394411
	},

	'802' => {
		message => q|WebGUI is not currently tracking page statistics. You can enable this feature in the settings.|,
		lastUpdated => 1036979395
	},

	'356' => {
		message => q|Template|,
		lastUpdated => 1031514049
	},

	'38' => {
		message => q|You do not have sufficient privileges to perform this operation. Please ^a(log in with an account); that has sufficient privileges before attempting this operation.|,
		lastUpdated => 1031514049
	},

	'408' => {
		message => q|Manage Roots|,
		lastUpdated => 1031514049
	},

	'528' => {
		message => q|Template Name|,
		lastUpdated => 1031514049
	},

	'164' => {
		message => q|Authentication Method|,
		lastUpdated => 1031514049
	},

	'807' => {
		message => q|Manage the groups in this group.|,
		lastUpdated => 1037579473
	},

	'945' => {
		message => q|Scratch Filter|,
		lastUpdated => 1052560369
	},

        'Export Page' => {
                message => q|Export Page|,
                lastUpdated => 1089039511,
                context => q|Title for the Export Page operation|
        },
        'Page to export' => {
                message => q|Page to export|,
                lastUpdated => 1089039511,
                context => q|Field label for the Export Page operation|
        },
        'Export as user' => {
                message => q|Export as user|,
                lastUpdated => 1089039511,
                context => q|Field label for the Export Page operation|
        },
	'Alternate style' => {
		message => q|Alternate style|,
                lastUpdated => 1089039511,
                context => q|Field label for the Export Page operation|
        },
	'Page Export Status' => {
                message => q|Page Export Status|,
                lastUpdated => 1089039511,
                context => q|Title for the Page Export Status operation|
        },
        'Depth' => {
                message => q|Depth|,
                lastUpdated => 1089039511,
                context => q|Field label for the Export Page operation|
        },
	'Extras URL' => {
		message => q|Extras URL|,
                lastUpdated => 1089039511,
                context => q|Field label for the Export Page operation|
        },
	'Uploads URL' => {
                message => q|Uploads URL|,
                lastUpdated => 1089039511,
                context => q|Field label for the Export Page operation|
        },
	'Page, Export' => {
                message => q|Page, Export|,
                lastUpdated => 1089039511,
                context => q|Help title for Page Export operation|
        },
	'Page, Export body' => {
                message => q|
<p>The Export Page function allows you to export WebGUI pages to static HTML
files on disk.
The &quot;exportPath&quot; variable in the WebGUI config file must be enabled
for this function to be available.</p>
<p><b>Depth<br>
</b>Sets the depth of the page tree to export. Use a depth of 0 to export only
the current page. </p>
<p><b>Export as user<br>
</b>Run the export as this user. Defaults to Visitor.</p>
<p><b>Alternate style<br>
</b>Sets an alternate style for the export. If this option is set, all pages
will be exported using the selected style. </p>
<p><b>Extras URL<br>
</b>Sets the Extras URL. Defaults to the configured extrasURL in the WebGUI
config file.</p>
<p><b>Uploads URL<br>
</b>Sets the Uploads URL. Defaults to the configured uploadsURL in the WebGUI
config file.</p>
				|,
                lastUpdated => 1102031745,
                context => q|Help body for Page Export operation|
        },
	'Forum, Threads Per Page' => {
		message => q|Threads Per Page|,
		lastUpdated =>1092652208,
		context => q|Field label for Edit Forum|
	},
	'Forum, Preview Heading' => {
		message => q|Message Preview|,
		lastUpdated =>1092745088,
		context => q|Label for Forum Preview heading|
	},
	'Forum, Post Preview Template' => {
		message => q|Post Preview Template|,
		lastUpdated =>1092748557,
		context => q|Label for Forum Settings|
	},
	'Forum, use preview' => {
		message => q|Use Post Preview?|,
		lastUpdated =>1092748557,
		context => q|Label for Forum Settings|
	},
	'tinymce' => {
                message => q|TinyMCE (IE, mozilla)|,
                lastUpdated =>1092748557,
                context => q|option for Rich Editor in profile|
        },
	'encrypt page' => {
                message => q|Encrypt content?|,
                lastUpdated =>1092748557,
                context => q|asset property|
        },
	'Forum, Post Preview Template Title' => {
		message => q|Forum Post Preview Template|,
		lastUpdated =>1092930637,
		context => q|help title forum post preview template|
	},
	'Forum, Post Preview Template Body' => {
		message => q|
<p>This template uses the same template variables as the Forum Post Template.</p>



|,
		lastUpdated =>1099614353,
		context => q|help body forum post preview template|
	},
	'cancel' => {
		message => q|cancel|,
		lastUpdated =>1092930637,
                context => q|Label of the cancel button|
        },

	'trash' => {
		message => q|Trash|,
		lastUpdated =>1092930637,
                context => q|Title of the trash manager for the admin console.|
        },

	'databases' => {
		message => q|Databases|,
		lastUpdated =>1092930637,
                context => q|Title of the database manager for the admin console.|
        },
	
	'packages' => {
		message => q|Packages|,
		lastUpdated =>1092930637,
                context => q|Title of the package manager for the admin console.|
        },
	
	'templates' => {
		message => q|Templates|,
		lastUpdated =>1092930637,
                context => q|Title of the templates manager for the admin console.|
        },
	
	'themes' => {
		message => q|Themes|,
		lastUpdated =>1092930637,
                context => q|Title of the themes manager for the admin console.|
        },
	
	'help' => {
		message => q|Help|,
		lastUpdated =>1092930637,
                context => q|Title of the help index for the admin console.|
        },
	
	'content filters' => {
		message => q|Content Filters|,
		lastUpdated =>1092930637,
                context => q|Title of the content filters manager for the admin console.|
        },
	
	'user profiling' => {
		message => q|User Profiling|,
		lastUpdated =>1092930637,
                context => q|Title of the user profile settings manager for the admin console.|
        },
	
	'page statistics' => {
		message => q|Page Statistics|,
		lastUpdated =>1092930637,
                context => q|Title of the page statistics viewer for the admin console.|
        },
	
	'user' => {
		message => q|User|,
		lastUpdated =>1092930637,
                context => q|Title of a tab in the global settings.|
        },
	
	'content' => {
		message => q|Content|,
		lastUpdated =>1092930637,
                context => q|Title of a tab in the global settings.|
        },
	
	'ui' => {
		message => q|UI|,
		lastUpdated =>1092930637,
                context => q|Title of a tab in the global settings.|
        },
	
	'messaging' => {
		message => q|Messaging|,
		lastUpdated =>1092930637,
                context => q|Title of a tab in the global settings.|
        },
	
	'authentication' => {
		message => q|Authentication|,
		lastUpdated =>1092930637,
                context => q|Title of a tab in the global settings.|
        },
	
	'company' => {
		message => q|Company|,
		lastUpdated =>1092930637,
                context => q|Title of a tab in the global settings.|
        },
	
	'misc' => {
		message => q|Miscellaneous|,
		lastUpdated =>1092930637,
                context => q|Title of a tab in the global settings.|
        },
	
	'settings' => {
		message => q|Settings|,
		lastUpdated =>1092930637,
                context => q|Title of the settings manager for the admin console.|
        },
	
	'settings help' => {
		message => q|Settings allow you to customize WebGUI's default values to satisfy your particular needs.
<br /><br />
		<b>Use shared clipboard?</b><br>
Enables a single, system-wide clipboard shared by all users.  Default is user separated clipboards.
<p>

<b>Use shared trash?</b><br>
Enables a single, system-wide trash shared by all users.  Default is user separated trash.
<p>

<b>If proxied, use real client IP address?</b><br>
If enabled and if the environment variable HTTP_X_FORWARDED_FOR is present, it's value will be used in place of REMOTE_ADDRESS as the client browser's IP address.  This is required for IP based groups to function properly in reverse-proxied, load-balanced system architectures.  In these environments, all requests would otherwise appear to come from the same host, namely the proxy server.  If you are uncertain if you need this setting enabled, you should probably leave it turned off.
<p>

<b>Prevent Proxy Caching</b><br>
Some companies have proxy servers that cause problems with WebGUI. If you're experiencing problems with WebGUI, and you have a proxy server, you may want to set this setting to <i>Yes</i>. Beware that WebGUI's URLs will not be as user-friendly after this feature is turned on.
<p>

<b>Show debugging?</b><br>
Show debugging information in WebGUI's output. This is primarily useful for WebGUI developers, but can also be interesting for Administrators trying to troubleshoot a problem.
<p>

<b>Track page statistics?</b><br/>
WebGUI can track some statistical information for your site. However, this will add a little extra strain on your processor and will make your database grow much more quickly. Enable this only if you do not have an external web statistics program.
<p/>


<b>Host To Use</b><br>
Select which host to use by default when generating URLs. Config Sitename will use the "sitename" variable from your config file. And Env HTTP Host will use the "HTTP_HOST" environment variable provided by the web server.
<p>

		<b>Company Name</b><br>
The name of your company. It will appear on all emails and anywhere you use the Company Name style macro.
<br><br>

<b>Company Email Address</b><br>
A general email address at your company. This is the address that all automated messages will come from. It can also be used via Company Email Address style macro.
<br><br>

<b>Company URL</b><br>
The primary URL of your company. This will appear on all automated emails sent from the WebGUI system. It is also available via the Company URL style macro.


		<B>Default Home Page</B><BR>Some really small sites don't have a home page, but instead like to use one of their internal pages like "About Us" or "Company Information" as their home page. For that reason, you can set the default page of your site to any page in the site. That page will be the one people go to if they type in just your URL http://www.mywebguisite.com, or if they click on the Home link generated by the ^H; navigation macro. 

<P><B>Not Found Page</B><BR>If a page that a user requests is not found in the system, the user can either be redirected to the home page or to an error page where they can attempt to find what they were looking for. You decide which is better for your users. 

<p><b>URL Extension</b><br />Add an extension such as "html", "php", or "asp" to each new page URL as it is created. <p><b>NOTE:</b> Do NOT include the dot "." in this. So the field should look like "html" not ".html".

<P><B>Maximum Attachment Size</B><BR>The size (in kilobytes) of the maximum allowable attachment to be uploaded to your system. 

<P><B>Max Image Size</B><BR>If images are uploaded to your system that are bigger than the max image size, then they will be resized to the max image size. The max image size is measured in pixels and will use the size of the longest side of the image to determine if the limit has been reached. 

<P><B>Thumbnail Size</B><BR>When images are uploaded to your system, they will automatically have thumbnails generated at the size specified here (unless overridden on a case-by-case basis). Thumbnail size is measured in pixels. 

<P><B>Snippet Preview Length</B><BR>How many characters of a snippet should be displayed in the collateral management system main listing. 

<B>Text Area Rows</B>, <B>Text Area Columns</B> and <B>Text Box Size</B> allow the size of
forms that WebGUI generates to be customized on a site-by-site basis.

<P><B>Text Area Rows</B><BR>This setting specifies how many rows of characters will be displayed in textareas on the site.

<P><B>Text Area Columns</B><BR>This setting specifies how many columns of characters will be displayed in textareas on the site. 

<P><B>Text Box Size</B><BR>This setting specifies how many characters can be displayed at once in text boxes on the site. 


		<b>Anonymous Registration</b><br>
Do you wish visitors to your site to be able to register themselves?
<br><br>

<b>Run On Registration</b><br>
If there is a command line specified here, it will be executed each time a user registers anonymously.
<p>

<b>Enable Karma?</b><br>
Should karma be enabled?
<p>

<b>Karma Per Login</b><br>
The amount of karma a user should be given when they log in. This only takes affect if karma is enabled.
<p>

<b>Session Timeout</b><br>
The amount of time that a user session remains active (before needing to log in again). This timeout is reset each time a user views a page. Therefore if you set the timeout for 8 hours, a user would have to log in again if s/he hadn't visited the site for 8 hours.
<p>

<b>Allow users to deactivate their account?</b><br>
Do you wish to provide your users with a means to deactivate their account without your intervention?
<p>

<b>Authentication Method (default)</b><br>
What should the default authentication method be for new accounts that are created? The two available options are WebGUI and LDAP. WebGUI authentication means that the users will authenticate against the username and password stored in the WebGUI database. LDAP authentication means that users will authenticate against an external LDAP server.
<br><br>

<i>NOTE:</i> Authentication settings can be customized on a per user basis.



<p>
<b>NOTE:</b> Depending upon what authentication modules you have installed in your system you'll see any number of options after this point. The following are the options for the two authentication methods installed by default.
<p>

<b>Encrypt Login?</b><br>
Should the system use the HTTPS protocol for the login form?  Note that setting this option to true will only encrypt the authentication itself, not anything else before or after the authentication.
<p>

<h2>WebGUI Authentication Options</h2>

<b>Minimum Password Length</b><br>
Set the minimum length that passwords can be.  If set to 0, there is no minimum length.
<br><br>

<b>Password Timeout</b><br>
Set how long before a user's password expires and has to change it.
<br><br>

<b>Expire passwords on user creation?</b><br>
Should a user's password be expired when he is created by an administrator forcing a change?
<br><br>

<b>Allow Users to Change Username?</b><br>
Should users be allowed to change their Usernames?
<br><br>

<b>Allow Users to Change Password?</b><br>
Should users be allowed to change their passwords?
<br><br>

<b>Send welcome message?</b><br>
Do you wish WebGUI to automatically send users a welcome message when they register for your site? 
<p>
<b>NOTE:</b> In addition to the message you specify below, the user's account information will be included in the message.
<p>

<b>Welcome Message</b> <br>
Type the message that you'd like to be sent to users upon registration.
<p>

<b>Recover Password Message</b><br>
Type a message that will be sent to your users if they try to recover their WebGUI password.
<p>



<h2>LDAP Authentication Options</h2>

<b>LDAP URL (default)</b><br>
The default url to your LDAP server. The LDAP URL takes the form of <b>ldap://[server]:[port]/[base DN]</b>. Example: ldap://ldap.mycompany.com:389/o=MyCompany.
<br><br>




<b>LDAP Identity</b><br>
The LDAP Identity is the unique identifier in the LDAP server that the user will be identified against. Often this field is <b>shortname</b>, which takes the form of first initial + last name. Example: jdoe. Therefore if you specify the LDAP identity to be <i>shortname</i> then Jon Doe would enter <i>jdoe</i> during the registration process.
<br><br>

<b>LDAP Identity Name</b><br>
The label used to describe the LDAP Identity to the user. For instance, some companies use an LDAP server for their proxy server users to authenticate against. In the documentation or training already provided to their users, the LDAP identity is known as their <i>Web Username</i>. So you could enter that label here for consistency.
<br><br>

<b>LDAP Password Name</b><br>
Just as the LDAP Identity Name is a label, so is the LDAP Password Name. Use this label as you would LDAP Identity Name.
<p>

|,
		lastUpdated => 1101775542,
	},

	'account' => {
		message => q|Account|,
		lastUpdated => 1098327046,
		context => q|Tab label for the user's account in the user manager.|
	},

	'profile' => {
		message => q|Profile|,
		lastUpdated => 1098327046,
		context => q|Tab label for the user's profile in the user manager.|
	},

};

1;
