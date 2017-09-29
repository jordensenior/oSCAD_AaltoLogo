//Aalto Logo Generator

//Configurables
LogoOption = rands(0, 2, 1); //random number generator. 0 = ?, 1 = !, 2 = ". Input a number directly if you want one thing in particular. Note, Aalto Visual Design Guidelines at date of writing specify this -should- be random. 

h=100; //extrusion height, in mm
s=1; //scale
o=-1; //offset
x = 400; //box horizontal size. Enter 0 for no box.
y = 400; //box vertical size. Enter 0 for no box.



//Generator - don't need to edit below here.
if(x > 0){
difference(){cube([x*s,y*s,h]);
{
if(round(LogoOption[0]) == 0) Question(1.1*h,s,o,x,y);
if(round(LogoOption[0]) == 1) Exclame(1.1*h,s,o,x,y);
if(round(LogoOption[0]) == 2) Quote(1.1*h,s,o,x,y);}}
}

else {
if(round(LogoOption[0]) == 0) Question(1.1*h,s,o,x,y);
if(round(LogoOption[0]) == 1) Exclame(1.1*h,s,o,x,y);
if(round(LogoOption[0]) == 2) Quote(1.1*h,s,o,x,y);
}
module Question(h,s,offs,x,y) {
    translate([x/5,y/3,offs])
    linear_extrude(height = h, convexity = 4)
    import("Aalto_logo_question.dxf",scale = s); 
}

module Exclame(h,s,offs,x,y) {
    translate([x/5,y/3,offs])
    linear_extrude(height = h, convexity = 4)
    import("Aalto_logo_exclame.dxf",scale = s); 
}

module Quote(h,s,offs,x,y) {
    translate([x/5,y/3,offs])
    linear_extrude(height = h, convexity = 4)
    import("Aalto_logo_quote.dxf",scale = s); 
}


