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

1. Drawing a cube. Objects (actions?) and parameters, semicolons
2. Sizing the cube, various ways (`cube(size=5)`, `cube(5)`, `cube(size=[10, 5, 2])`, `cube([10, 5, 2])`)
3. Aside about numbers and vectors
3. Adjusting the view
3. Modules and parameters, named parameters and positional parameters
4. Centering a cube, and more about named and positional parameters (`cube(5, center)` vs. `cube(center=true, size=5)`)
5. Aside about coordinates and printing: unitless, and can place later when printing, so origin doesn't matter
5. Manipulating the cube: translation, omitting parameter names when there is only one parameter, translation vs. centering, braces to group a module
6. Getting help: OpenSCAD cheat sheet and manual
6. Drawing multiple cubes, union is default, first lab: drawing an arch
7. Getting rid of magic numbers: variables, DRY, comments, assignment as constant vs. modifier
8. Manipulating the cube: operators, rotation, order of manipulations, using multiple rotations
9. More 3D objects: cylinders and spheres (and cones)
10. Special variables for curve quality: $fs, $fa, $fn, suggest using $fs and $fa at top of file
11. Scaling objects, `cube(size=[10, 5, 2])` and `scale([10, 5, 2]) cube()`, `scale([10, 5, 2]) sphere()`
12. Coloring objects, hiding them, highlighting them, and making them transparent: `color()`, `*`, `#`, and `%`
13. Omitting all other objects with `!`

# Other Topics

* Using an External Editor
* Comments
* Boolean operations: union, intersection, difference, and danger of difference with overlapping edges
* Extrusion
* Convex hull
* Minkowski sum
* Importing an STL file
* Using DXF files from Inkscape (need to position at (0,0) in Inkscape, and no splines)
* MCAD library
* Loops
* List comprehensions
* Use of braces and semicolons
* resize(), for use in modules that can't figure out a scale?
* inf and nan, x==undef vs. x!=x for x is NaN
* boolean values

# Notes to Consider

* Use `scale()` only with spheres or when scaling a completed part or design.
* When writing modules, follow the origin conventions: be either like a cube, a cylinder, or a sphere, and also consider supporting a `center` parameter.
* Local variables
* `import` and `use`
* Don't abut objects at edges. (Same problem as holes that abut at a face or edge.)
* Accuracy of circular objects: inscribed polygons
* Must use "convexity" when using linear_extrude and other operators
