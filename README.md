# tabs-to-html #

AppleScripts to save out links to all open tabs as an HTML file

### Notes ###

This is a first pass for my own use, so the HTML is fairly ugly. Still, hopefully it's useful.

### Installation ###

Firstly, enable the script menu: open AppleScript Editor and in Preferences > General select 'Enable Script menu bar extra'.

Download [the zip file](https://github.com/blech/tabs-to-html/blob/binary/tabs-to-html.zip?raw=true "tabs-to-html.zip, 12kb"). Using the script menu, select Open Scripts Folder > Open User Scripts Folder.

Copy the zip file to this folder, and unzip it. You should end up with an Applications and Libraries folder inside the Scripts folder.

When you use either Safari or Chrome, you can now use the 'Open Tabs To HTML' item in the script menu to save the current tabs as HTML. The list of tabs will be saved to a dated file in a Personal > Tabs folder within your Documents folder.

### TODO ###

* ~~Remove path hardcoding~~
* ~~Write install instructions~~
* ~~Create binary bundle that you can drop into place~~
* Support OneTab export/import format
* Styling
* Select output directory

### Suggestions ###

Things I can't imagine bothering to do but which I'd love to pull in:

* Add Firefox support
