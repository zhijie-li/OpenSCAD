
cylinder(d=50,1.5,$fn=5);

linear_extrude(height = 40,twist = -180 ){
difference(){
circle(d=19,$fn=8);
circle(d=18,$fn=8);
    }
}