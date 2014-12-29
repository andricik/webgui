use WebGUI::Upgrade::Script;

use Cwd qw(realpath);
use WebGUI::Paths;

start_step "Add Packages to Admin Console in the config file";

if( ! session->config->get( 'adminConsole/packages' ) ) {

    session->config->addToHash( 'adminConsole', 'packages',
      {
         groupSetting => "3",
         icon => "packages.gif",
         title => "^International(packages,WebGUI);",
         uiLevel => 1,
         url => "^PageUrl(\"\",op=listPackages);"
      },
    );

}

done;

