Highlight formats
=================

Highlights LibreOffice or OpenOffice.org document formats so that it's easier to spot them. Usefull when working with desktop publishing apps like Indesign or Scribus.

![Format Change](assets/change.gif)

Installation
------------

Follow these steps to install the script as a menu item in LibreOffice:

1. Add the script to LibreOffice:
    1. `Tools > Macros > Organize Macros > LibreOffice Basic...`
    2. Select `My Macros` and click on `New`
    3. Add the contents of `highlight-formats.bas` to the file
2. Add the shortcut:
    1. `Tools > Customize`
    2. `Menu` choose `Format` from the dropdown menu.
    3. Click on `Add`, go to `LibreOffice Macros > My Macros > Standard > Module1`, select `HighlightFormats`, click on `Add`
    4. You can add separators or rename the item in this modal window.

Known Issues
------------

- Seems that sub/supscript highlight doesn't work on LO.org anymore.
- All highlight actions should be grouped to undo in one step.
