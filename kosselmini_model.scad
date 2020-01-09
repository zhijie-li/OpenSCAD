r=150;
l=2*r;
h=600;
a=0;b=0;c=0;
rod1=r*[0,1,h/r/2];
rod2=r*[-sqrt(3)/2,-0.5,h/r/2];
rod3=r*[sqrt(3)/2,-0.5,h/r/2];

translate(rod1)cube([10,10,h],center=true);
translate(rod2)cube([10,10,h],center=true);
translate(rod3)cube([10,10,h],center=true);


function car1(a)=r*[0,1,a/r];
function car2(b)=r*[-sqrt(3)/2,-0.5,b/r];
function car3(c)=r*[sqrt(3)/2,-0.5,c/r];



function a_pos(x,y,z)=z+sqrt(l*l-x*x-(y-r)*(y-r));
function b_pos(x,y,z)=z+sqrt(l*l-(x+r*sqrt(3)/2)*(x+r*sqrt(3)/2)-(y+r/2)*(y+r/2));
function c_pos(x,y,z)=z+sqrt(l*l-(x-r*sqrt(3)/2)*(x-r*sqrt(3)/2)-(y+r/2)*(y+r/2));

function position(t) = t < 0.5
    ? [(1-0.5)* l/2 * cos(1*360 * t),(1-0.5)* l/2 * sin(1*360 * t)]
    : [(1-0.5)* l/2 * cos(1*360 * t),(1-0.5)* l/2 * sin(1*360*t)];
function poz(t)=150+150*sin(360*t)*sin(360*t);
z=poz($t);
pos = position($t);
plate();
curvez();

draw(pos[0],pos[1],z);
module plate() {
    %translate([0, 0, z]) {
        translate([0,25,0]) cube([l, l, 0.1], center = true);
        color("Black") linear_extrude(1) difference() {            curve();
            offset(-1) curve();
        }
    }
}

module curve() polygon([for (a = [ 0 : 0.004 : 1]) position(a)]);

module curvez() {
    for (a = [ 0 : 0.002 : 1]) 
    translate([0,0,poz(a)]) translate(position(a)) cube(1);
    ;
    }


module draw(x,y,z){
    apos=car1(a_pos(x,y,z));
    bpos=car2(b_pos(x,y,z));
    cpos=car3(c_pos(x,y,z));
    
    cars(apos);
    cars(bpos);
    cars(cpos);

nozzle([x,y,z]);

 
hull() {
   translate([x,y,z])   sphere (1)      ;
   translate(apos)    sphere (1)      ;
    }
hull() {
   translate([x,y,z])   sphere (1)      ;
   translate(bpos)    sphere (1)      ;
    }
hull() {
   translate([x,y,z])   sphere (1)      ;
   translate(cpos)    sphere (1)      ;
    }

}
module cars(xt){
    
    translate(xt)cube(20,center=true);
    
    }
    
    
module nozzle(xt){
    
    translate(xt)sphere(5,center=true);
    
    }