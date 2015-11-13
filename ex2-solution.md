# Exercise 2 Solution

## 1. Arch with overhang.

Your solution may vary in the dimensions.

    translate([5, 0, 0])
    cube(size=[5, 5, 15]);
    
    translate([20, 0, 0])
    cube(size=[5, 5, 15]);
    
    translate([0, 0, 15])
    cube(size=[30, 5, 5]);

## 3. Arch with no overhang.

    translate([5, 0, 0])
    cube(size=[5, 5, 15]);
    
    translate([20, 0, 0])
    cube(size=[5, 5, 15]);
    
    translate([5, 0, 15])
    cube(size=[20, 5, 5]);

## 4. Uprights closer together.

    translate([5, 0, 0])
    cube(size=[5, 5, 15]);
    
    translate([15, 0, 0])
    cube(size=[5, 5, 15]);
    
    translate([5, 0, 15])
    cube(size=[15, 5, 5]);

## 5. Scaled to be twice the size.

I used the indent button
<img alt="Indent button" src="images/indent-button.png" width="16" height="14" /> to correct the indentation inside of the braces. You can also use the menu items in the Edit menu or their keyboard equivalents.

    scale([2, 2, 2]) {
      translate([5, 0, 0])
      cube(size=[5, 5, 15]);
      
      translate([15, 0, 0])
      cube(size=[5, 5, 15]);
      
      translate([5, 0, 15])
      cube(size=[15, 5, 5]);
    }
