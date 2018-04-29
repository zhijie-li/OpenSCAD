$fn=180;
use <thread.scad>
translate([0,0,40])
intersection(){
rotate([0,0,-80])hollow_polygon_threads(height=10,radius=10.5,pitch=2,depth=2,basewidth=0.3,n=1,groove=3,step=3,a1=30,a2=30);
cylinder(h=9,d=22);
}

difference(){
    union(){
translate([0,0,0])cylinder(h=50,d=26);
        cube ([20,13,15]);
    }
translate([0,0,-10])cylinder(h=80,d=20);
translate([0,8,8])    cube([100,100,1]);
translate([-50,9,7])    cube([100,100,3]);

}
/*
#rotate([0,0,90])
color ([0,1,0])intersection(){
translate([-29.04,-40.54,5])import(convexity =10,"E:/KosselMini_Windows/openSCAD/Dremel_Circle_Cutter_screw_on/dremel_attachment.stl");
translate([0,0,40])cylinder(h=14,d=18);
    
    
    }8/