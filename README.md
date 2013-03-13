# tabs-to-html #

AppleScripts to save out links to all open tabs as an HTML file

### Notes ###

This is a first pass for my own use. I don't have instructions on how to use it (or binaries), and the HTML is ugly. Still, hopefully it's useful.

### Installation ###

To install, open AppleScript Editor. In Preferences > General, enable 'Show Script menu in the menu bar'. From that menu, select Open Scripts Folder > Open User Scripts Folder.

In the opened window, create the folders 'Libraries' and 'Applications'. Inside 'Applications', create folders 'Safari' and 'Google Chrome'.

Open the three scripts from this repository, and save:
* FileWriter.applescript as a compiled script in `~/Library/Scripts/Libraries`
* Safari.applescript as a compiled script called Open Tabs To HTML in `~/Library/Scripts/Applications/Safari`
* Chrome.applescript as a compiled script called Open Tabs To HTML in `~/Library/Scripts/Applications/Google Chrome`

You should then see the option to execute these scripts in the script menu when the appropriate app is being used.

### TODO ###

* ~~Remove path hardcoding~~
* ~~Write install instructions~~
* Create binary bundle that you can drop into place
* Support OneTab export/import format
* Styling

### Suggestions ###

Things I can't imagine bothering to do but which I'd love to pull in:

* Add Firefox support
