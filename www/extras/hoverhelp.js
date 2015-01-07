
/*
 * Find the "Help" button in the asset edit form (eg addEditSaveButtons() in
 * WebGUI/Asset.pm) and attach logic to it to show/hide the help div blocks. 
 * This just shows all of them, at once, in-line, rather than trying to 
 * pop things up.
 */

function initHoverHelp() {
    $('#helpButton').click(function(event) {
        event.preventDefault();
        $('.wg-hoverhelp').toggle();
    });
}

YAHOO.util.Event.onDOMReady(initHoverHelp);

