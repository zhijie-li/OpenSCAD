
cylinder(d=80,2,$fn=5);

linear_extrude(height = 50,twist = -180 ){
difference(){
circle(d=31.5,$fn=12);
circle(d=31,$fn=12);
    }
}