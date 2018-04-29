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

//horse();
module horse(){
    
    shell();
    
    translate([-1.5,57+1.5,0])rotate([90,0,0])import ("E:\\KosselMini_Windows\\STL\\raspberrypi3\\Case_Bottom_-_With_Vents.STL",convexity=10);
    }


*/
shell();
    base();
module base(){
    difference(){
        union(){
    translate([-1,-1,0])cube([88,59,1.75]);
        linear_extrude(3.5){
            translate([4,4,0])      circle(4);
            translate([62,4,0])     circle(4);
            translate([4,53,0])     circle(4);
            translate([62,53,0])    circle(4);
            }
    }
    union(){
        translate([4,4,-1])cylinder(h=15,d=3);
        translate([62,4,-1])cylinder(h=15,d=3);
        translate([4,53,-1])cylinder(h=15,d=3);
        translate([62,53,-1])cylinder(h=15,d=3);
       // holes();

        //for(y=[0:2:57]){         translate([0,y,0]) rotate([0,90,0])rotate([0,0,90]) cylinder(h=86,r=0.5,$fn=4);        }
        }
    }
    }

module shell()    {
    difference(){    
    linear_extrude(12)
        difference (){
            offset(2.5) square([86,57]);
             square([86,57]);
            
        //square([86,57]);
        }
        
    translate([0,0,3.5])
        union(){
        translate([-5,21,-5])cube([20,15,20]);
        translate([6,-5,0])cube([52,15,20]);
        translate([50,2,0])cube([52,53,20]);
        translate([-1,-1,7.5])cube([88,59,5]);
        }
    }
}



module holes(){
    
      s=15;
    a=3;b=1;

      for(y=[10:s/2/tan(60):45]){
        i=(y-10)/s*tan(60);
          
          
          echo(i);
        for(x=[10+s*cos(60)*cos(i*180)*cos(i*180):s:70]){
        
        
            translate([x+a,y+b,-0.2])cylinder(r1=s/3-2,r2=s/3-4,h=3,$fn=6);
        }
    }

      
    

    
    }