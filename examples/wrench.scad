// A wrench model.

$fs = .5;
$fa = 10;

// A size used for making holes. Any part of the model that gets
// a hole should lie within the two planes z = +/- maxModelHeight.
maxModelHeight = 10;

// Dimensions of the wrench handle and hole at the end.
handleLength = 45;
handleWidth = 10;
handleHeight = 3;

handleHoleDiameter = handleWidth - 4;

// Dimensions of the head end and the slot.
headDiameter = 2*handleWidth;

slotWidth = 10;
slotLength = headDiameter * 3/4;
slotRoundingRadius = 8;
slotRotation = 30;

difference() {
  // The handle and head, minus the slot and hole.
  union() {
    cylinder(d=headDiameter, h=handleHeight);

    translate([0, -handleWidth/2, 0])
    cube(size=[handleLength - handleWidth/2, handleWidth, handleHeight]);

    translate([handleLength - handleWidth/2, 0, 0])
    cylinder(d=handleWidth, h=handleHeight);
  }

  // The hole at the end of the handle.
  translate([handleLength - handleHoleDiameter/2 - 2, 0, 0])
  cylinder(d=handleHoleDiameter, h=2*maxModelHeight, center=true);

  // The slot in the head.
  rotate(180 + slotRotation)
  translate([-headDiameter/6, -slotWidth/2, -maxModelHeight])
  intersection() {
    cube(size=[headDiameter, slotWidth, 2*maxModelHeight]);
    
    translate([slotRoundingRadius, slotWidth/2, 0])
    cylinder(r=slotRoundingRadius, h=2*maxModelHeight);
  }
}
