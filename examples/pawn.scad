// A model of a (somewhat crude) chess pawn.

// Dimensions of the base, the shaft, the collar, and the head.

baseDiameter = 25;
baseHeight = 5;

headDiameter = 18;

collarDiameter = 18;
collarHeight = 4;
collarAltitude = 30;

shaftBottomDiameter = 15;
shaftTopDiameter = 10;
shaftLength = 35;

// The base.
cylinder(d=baseDiameter, h=baseHeight);

// The tapering shaft.
translate([0, 0, baseHeight])
cylinder(d1=shaftBottomDiameter, d2=shaftTopDiameter, h=shaftLength);

// The "collar", partway up the shaft.
translate([0, 0, collarAltitude])
cylinder(d=collarDiameter, h=collarHeight);

// The head, a sphere.
translate([0, 0, baseHeight + shaftLength + headDiameter/2 - 2])
sphere(d=headDiameter);
