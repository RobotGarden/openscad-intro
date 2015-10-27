# openscad-class
Materials for a class in using OpenSCAD to create 3D models.

# Outline
1. Overview of OpenSCAD
2. Installing OpenSCAD
3. First part: sizing a cube, adjusting the view (right-hand rule), centering
4. Manipulating a part: translating, rotating (right-hand rule), scaling

# Order of Topics

This order has been chosen because of the fact that we have to explain about the special variables
to control arc quality. Thus, we will talk about variables first in the context of purely rectilinear
objects.

1. Drawing a cube
2. Sizing the cube, various ways (`cube(size=5)`, `cube(5)`, `cube(size=[10, 5, 2])`, `cube([10, 5, 2])`)
3. Modules and parameters, named parameters and positional parameters
4. Centering a cube, and more about named and positional parameters (`cube(5, center)` vs. `cube(center=true, size=5)`)
5. Manipulating the cube: translation, omitting parameter names when there is only one parameter, translation vs. centering
6. Getting help: OpenSCAD cheat sheet and manual
6. Drawing multiple cubes, union is default, first lab: drawing an arch
7. Getting rid of magic numbers: variables, DRY
8. Manipulating the cube: rotation
9. More 3D objects: cylinders and spheres
10. Special variables for curve quality: $fs, $fa, $fn, suggest using $fs and $fa at top of file
11. Scaling objects, `cube(size=[10, 5, 2])` and `scale([10, 5, 2]) cube()`, `scale([10, 5, 2]) sphere()`

# Advanced Topics

* Extrusion
* Convex hull
* Minkowski sum
