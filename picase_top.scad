$fn=90;
/*
difference(){
    
    horse();
    translate([2,-58,3.5])cube([80,56,100]);
    translate([15,-56,5])cube([80,52,100]);
    translate([5.5,-5.5,-1])cylinder(h=15,d=2);
    translate([63.5,-5.5,-1])cylinder(h=15,d=2);
    translate([5.5,-54.5,-1])cylinder(h=15,d=2);
    translate([63.5,-54.5,-1])cylinder(h=15,d=2);
    s=20;
    a=0;b=-3;
    for(y=[-10:-s/2/tan(60):-50]){
        i=(y+10)/s*tan(60);echo(i);
        for(x=[15+s*cos(60)*cos(i*180)*cos(i*180):s:75]){
        
        
            translate([x+1,y+b,-1])cylinder(d=s/1.5-4,h=10,$fn=100);
        }
    }
}
*/
//#translate([85.5,0,0])rotate([0,180,0])horse();
module horse(){
    
    shell();
    
    translate([-1.5,57+1.5,0])rotate([90,0,0])import ("E:\\KosselMini_Windows\\STL\\raspberrypi3\\Case_Top-Heatsink_Cutout_Only.STL",convexity=10);
    }



//shell();
    base();
module base(){
    difference(){
    union(){
        translate([0,0,1])minkowski(){cube([85,56,0.75]);cylinder(r=2,h=0.1); }
    
        minkowski(){cube([85,56,1.5]);cylinder(r=1,h=0.1); }
        }

    translate([0,0,-1])
    union(){
        translate([85-52-7,-2,0])cube([52,7+2,5]);
        translate([-2,37,0])cube([22,18,5]);
        translate([-2,2,0])cube([18,15,5]);
        translate([-2,20,0])cube([18,15,5]);
        translate([51,16,0])cube([16,16,5]);
        translate([78,18,0])cube([3,18,5]);
        translate([38,35,0])cube([3,18,5]);
        }
    }
    }

