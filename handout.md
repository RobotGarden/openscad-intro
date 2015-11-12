# OpenSCAD Class Handout

## Installing OpenSCAD

The latest release of OpenSCAD, as of this writing, is 2015.03-1. Download OpenSCAD from the OpenSCAD web site, http://www.openscad.org/downloads.html. There are installers for Windows, a DMG for OS X, and instructions for various Linux distributions.

## First Steps

When you start OpenSCAD a window will appear with three panes, an editor for modifying your OpenSCAD script, a view to display your 3D model, and a console for information and error messages.

![OpenSCAD window](images/openscad-window.png)

## Your First Model

In the editor window, enter this (very small) script and press F5 to render the object in the view pane. You can instead press the preview button
![OpenSCAD preview button](images/preview-button.png), which is the same as pressing F5.

    cube();

You should then see a small cube shown in the view:

![Cube image](images/cube.png)

## Manipulating the View

The cube is 1&times;1&times;1, which is quite small. Zoom the view using the zoom button ![Zoom button](images/zoom.png), or press the *zoom all* button
![Zoom-all button](images/zoom-all.png) to scale the view to match the size of your model. You can also use the mouse wheel or a zoom gesture on your touchpad.

Clicking and dragging in the view rotates the axes around so you can see all sides of your model.
