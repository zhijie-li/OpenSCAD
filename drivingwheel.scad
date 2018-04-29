$fn=180;
difference(){
    union(){
translate([0,0,-6])cylinder(h=12,r=16);
      translate([0,0,6])  cylinder(h=8,r2=10,r1=10);
    }
rotate_extrude()
translate ([16,0,0])circle (d=7);
translate([0,0,-18])cylinder(h=136,r=4.4);
    
    }