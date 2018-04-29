//pipette_hanger.scad

rotate( [ 0, -90, 0 ] ) 
difference(){
assem1();

}
module assem1() {
    
     translate([-2,0,0]) topboard();

    difference() {
             union() {
            back1();
            bottom();
        } 
        union(){
        translate([-2,0,0]) pipette();
           cutters();
        #translate ([-96,-40,-31])cube ([100,80,26]);
        }
    }
} 

module topboard() {
    intersection() {
        difference() {
            translate( [ 
            7, 0, -4 ] ) 
                    translate( [8, 15.5, 0 ] ) rotate( [ 0, -35, 0 ] ) rotate( [ 90, 0, 0 ] )
          scale ([1,1,1])cylinder( 31, r = 12 );

                
        translate ([-50,-40,-31])cube ([100,80,26.5]);
        pipette();
        translate( [ 30, 60, -26 ] ) rotate( [ 90, 0, 0 ] )
          	scale ([0.6,1,1])cylinder( 100, d = 61 );
            } 
        
    }
}
  

module back1() {
    translate([0,0,-18])cube ([38,31,45],center=true);

    difference() {
        union() {
              translate( [ 0, 13, 2 ] ) sideboardA();
              translate( [ 0, -15.5, 2 ] ) sideboardA();
        } 
        union() {
            	translate( [ -1, 15.5, -80 ] ) cube( [ 50, 30, 100 ] );
              translate( [ -1, -45.5, -80 ] ) cube( [ 50, 30, 100 ] );

        }
    }
} 
  

module sideboardA() {
#translate( [ 0, 0, -13 ] ) cube( [ 35, 2.5, 26 ] );
}




module pipette(){
    translate( [ 20 + 20-3.25, 0, -3 ] ) rotate([0,-30,0])    scale([0.75,1,1])      cylinder( 20, d = 26 );
    translate( [ 20 + 20-3.25, 0, 4 ] ) rotate([0,-50,0])    scale([0.75,1,1])      cylinder( 20, d = 26 );
    translate( [ 20 + 20-3.25, 0, 10 ] ) rotate([0,-70,0])    scale([0.75,1,1])      cylinder( 20, d = 26 );
    
    translate( [ 20 + 20-3.25, 0, -80 ] ) rotate( [ 0, 0, 0 ] )
    
      union(){
    translate([-2,0,30])scale([0.75,1,1])      rotate([0,-4,0])cylinder( 100, d = 26 );
    translate([0,0,0])scale([1,1,1])      cylinder( 30, d = 24);
          translate([0, -13 ,0])cube([26,26,100]);
          }
    
    
    }
module cutters() {
                    translate( [10, 0, 8.3 ] ) rotate( [ 0, -35, 0 ] ) 
          scale ([1,0.8,1])cylinder( 20, r = 16.3 );


      union() {
          translate( [ 24, 50, 41 ] ) rotate( [ 90, 0, 0 ] )
          	cylinder( 100, d = 60, $fa = 1, $fs = 0.5 );
          translate( [ -40, 25, -35 ] ) rotate( [ 0, 90, 0 ] )
          	scale ([1,0.5,1])cylinder( 130, d = 70 );

          translate( [ -40, -25, -35 ] ) rotate( [ 0, 90, 0 ] )
          	scale ([1,0.5,1])cylinder( 130, d = 70 );

          translate( [ 30, 60, -26 ] ) rotate( [ 90, 0, 0 ] )
          	scale ([0.6,1,1])cylinder( 100, d = 61 );
          translate( [ 0, -25, 8 ] ) rotate( [ 0, -10, 0 ] )
       	   cube( [ 25, 50, 10 ] );
          translate( [ 45, 50, -23 ] ) rotate( [ 90, 0, 0 ] )
      	    cylinder( 100, d = 60, $fa = 1, $fs = 0.5 );
          translate( [ -25, 50, -85 ] ) rotate( [ 90, 0, 0 ] )
      	    cylinder( 100, d = 100, $fa = 1, $fs = 0.5 );
          translate( [ -10, 50, 37.5] ) rotate( [ 90, 0, 0 ] )
      	    cylinder( 100, d = 70, $fa = 1, $fs = 0.5 );

          translate( [ 30, -25, -6 ] ) rotate( [ 0, -25, 0 ] )
       	   cube( [ 25, 50, 10 ] );
      }
      translate( [ 27, -25, -80 ] ) cube( [ 50, 50, 50 ] );
                translate( [ 0, -25, -57 ] ) rotate( [ 0, 30, 0 ] )
       	   cube( [ 25, 50, 10 ] );

      ;
                translate( [ -113, -50, -80 ] )
      cube(100);
} 



module bottom(){
difference(){
              translate( [ 28, 15.5, -26 ] ) rotate( [ 90, 0, 0 ] )
          	scale ([1.1,1,1])cylinder( 31, d = 65 );
    
              translate( [ 28, 26, -26 ] ) rotate( [ 90, 0, 0 ] )
          	scale ([0.6,1,1])cylinder( 52, d = 55 );

    
}    }
//end of openSCAD file
