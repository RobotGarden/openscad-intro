// A model of a (somewhat crude) chess pawn.

// Dimensions of the base, the body, the collar, and the head.

baseDiameter = 25;
baseHeight = 5;

headDiameter = 18;

collarDiameter = 18;
collarHeight = 4;
collarAltitude = 30;

bodyBottomDiameter = 15;
bodyTopDiameter = 10;
bodyHeight = 35;

// The base.
cylinder(d=baseDiameter, h=baseHeight);

// The tapering body.
translate([0, 0, baseHeight])
cylinder(d1=bodyBottomDiameter, d2=bodyTopDiameter, h=bodyHeight);

// The "collar", partway up the body.
translate([0, 0, collarAltitude])
cylinder(d=collarDiameter, h=collarHeight);

// The head, a sphere.
translate([0, 0, baseHeight + bodyHeight + headDiameter/2 - 2])
sphere(d=headDiameter);
