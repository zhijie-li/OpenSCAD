use <ring.scad>;
round_cornered_box();
module round_cornered_box(h=10,w=20,r=2,thickness=1)
    {
        
        {
            translate([r,0])  square([h-r*2,thickness]);
            translate([0,r])  square([thickness,w-r*2]);
            translate([r,w-thickness])  square([h-r*2,thickness]);
            translate([h-thickness,r])  square([thickness,w-r*2]);
            translate([r,r]) 2d_ring_secter(r,r-thickness,180,270);
            translate([r,w-r]) 2d_ring_secter(r,r-thickness,90,180);
            translate([h-r,r]) 2d_ring_secter(r,r-thickness,270,360);
            translate([h-r,w-r]) 2d_ring_secter(r,r-thickness,0,90);
            
        }
    
    
    }
    
   
module 2d_ring_secter(or=2,ir=1,s_deg,e_deg){
  
   op=[for(i=[s_deg:1:e_deg]) or*[cos(i),sin(i)]] ;
   ip=[for(i=[e_deg:-1:s_deg]) ir*[cos(i),sin(i)]];
    p=concat(op,ip);
 //  echo (p);
   polygon(concat(op,ip));
    
}