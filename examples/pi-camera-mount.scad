// A Raspberry Pi camera mount.

$fs = .2;
$fa = 5;

// Dimensions of the camera board.
cameraWidth = 25;
cameraHeight = 24;
aperatureWidth = 8;
aperatureYOffset = 5.5;
cameraBoardThickness = 1;

holeYOffset = 9.5;
holeXSpacing = 21;
holeYSpacing = 12.5;
holeDiameter = 2;

mountMargin = 3;
mountBottomMargin = 10; // To accommodate the cable.
mountWidth = cameraWidth + 2*mountMargin;
mountHeight = cameraHeight + mountMargin + mountBottomMargin;

mountThickness = 3;

baseWidth = 15;
mountingHoleSpacing = 15;
mountingHoleDiameter = 3;

aperatureMargin = 1;

maxModelSize = 30;

// The camera board.
%translate([mountBottomMargin, -cameraWidth/2, mountThickness])
cube(size=[cameraHeight, cameraWidth, cameraBoardThickness]);

// The mount base.
rotate([0, -90, 0])
difference() {
  translate([0, -mountWidth/2, 0])
  cube(size=[baseWidth + mountThickness, mountWidth, mountThickness]);
  
  translate([baseWidth/2 + mountThickness, -mountingHoleSpacing/2, 0])
  cylinder(d=mountingHoleDiameter, h=2*maxModelSize, center=true);
  
  translate([baseWidth/2 + mountThickness, mountingHoleSpacing/2, 0])
  cylinder(d=mountingHoleDiameter, h=2*maxModelSize, center=true);
}

// The main part of the mount.
difference() {
  translate([0, -mountWidth/2, 0])
  cube(size=[cameraHeight + mountMargin + mountBottomMargin,
             cameraWidth + 2*mountMargin,
             mountThickness]);
  
  translate([holeYOffset + mountBottomMargin, -holeXSpacing/2, 0])
  cylinder(d=holeDiameter, h=2*maxModelSize, center=true);
  
  translate([holeYOffset + mountBottomMargin, holeXSpacing/2, 0])
  cylinder(d=holeDiameter, h=2*maxModelSize, center=true);
  
  translate([holeYOffset + holeYSpacing + mountBottomMargin, -holeXSpacing/2, 0])
  cylinder(d=holeDiameter, h=2*maxModelSize, center=true);
  
  translate([holeYOffset + holeYSpacing + mountBottomMargin, holeXSpacing/2, 0])
  cylinder(d=holeDiameter, h=2*maxModelSize, center=true);
  
  translate([mountBottomMargin + aperatureYOffset,
              -aperatureWidth/2 - aperatureMargin,
              -maxModelSize])
  cube(size=[aperatureWidth + 2*aperatureMargin,
             aperatureWidth + 2*aperatureMargin,
             2*maxModelSize]);
}
