    
module thread(height,degree,thickness,od,step){//thickness is the fractionof threads
    turns=abs(degree/360);
    threadheight=abs(height/turns/2);
    hh=threadheight/thickness;
    
    peri=od*3.14159265358979323846;
    
    w=sin(90/thickness)*od;
    stepwidth=step<10?step:10;//indegree
    hps=abs(height/degree*stepwidth);
    intersection(){
    union(){
    for(i=[0:stepwidth:abs(degree)])
    {
        rotation=i*degree/abs(degree);
        rotate([0,0,rotation])translate([0,0,hps*i/stepwidth])
        
        cube([od,w,hps],center=true);
    }
       
        
        
        }
     cylinder(h=height,d=od,center=false,$fa=1,$fs=0.5);       
    }
}
polygon_threads();
    
module polygon_threads(height=10,radius=10,pitch=5,depth=3,basewidth=3,n=2,groove=3,step=5,a1=10,a2=30){

    r2=radius;
    r1=radius-depth;

    h1=0;

    h2=depth*tan(a1);;
    h3=basewidth-depth*tan(a2);
    h4=basewidth;
    
    yt=pitch*n/360*step;
    intersection(){
        cylinder(h=height,r=r2,$fa=1,$fs=0.5);
    union(){
   // cylinder(h=height,r=r1,$fa=1,$fs=0.5);
    translate([0,0,-pitch])
    rotate([90,0,0])
    for(j=[1:n]){
    rotate([0,360/n*j,0])
        
        screw_extrude(height+pitch,r1,pitch*n,step) 
        polygon([[-.1,h1],[depth,h2],[depth,h3],[-.1,h4]]);
        
    /*    
    for(i=[0:yt:height+pitch]){
        hull(){
            translate([0,i,0])rotate([0,i/yt*step,0])           teethshape(r1,r2,h1,h2,h3,h4);
            translate([0,i+yt,0])rotate([0,i/yt*step+step,0])           teethshape(r1,r2,h1,h2,h3,h4);
            }
        }
*/    
    }}}}
    
module hollow_polygon_threads(height=10,radius=10,pitch=5,depth=3,basewidth=3,n=2,groove=3,step=5,a1=10,a2=30){

    r2=radius;
    r1=radius-depth;

    h1=0;

    h2=depth*tan(a1);;
    h3=basewidth-depth*tan(a2);
    h4=basewidth;
    
    yt=pitch*n/360*step;
    intersection(){
        cylinder(h=height,r=r2,$fa=1,$fs=0.5);
    union(){
    translate([0,0,-pitch])
    rotate([90,0,0])
    for(j=[1:n]){
    rotate([0,360/n*j,0])
        
        screw_extrude(height+pitch,r1,pitch*n,step) 
        polygon([[-.1,h1],[depth,h2],[depth,h3],[-.1,h4]]);
        
    /*    
    for(i=[0:yt:height+pitch]){
        hull(){
            translate([0,i,0])rotate([0,i/yt*step,0])           teethshape(r1,r2,h1,h2,h3,h4);
            translate([0,i+yt,0])rotate([0,i/yt*step+step,0])           teethshape(r1,r2,h1,h2,h3,h4);
            }
        }
*/    
    }}}}
        
module teethshape(r1,r2,h1,h2,h3,h4){
        
                linear_extrude(0.1)
        polygon([[r1,h1],[r2,h2],[r2,h3],[r1,h4]]);

        }
        
      
        
//screw_extrude(height=10,radius=10,pitch=5,step=5) circle(2);
        
module screw_extrude(height=10,radius=10,pitch=5,step=5){
    
    yt=pitch/360*step;


    
    for(i=[0:yt:height]){
        hull(){
            translate([0,i,0])
            rotate([0,i/yt*step,0])                     translate([radius,0,0])   
            linear_extrude(0.1)children();
            
            translate([0,i+yt,0])
            rotate([0,i/yt*step+step,0])                translate([radius,0,0])  
            linear_extrude(0.1)children();
            }
        }
    
    }
    