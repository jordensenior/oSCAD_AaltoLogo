//Aalto Logo Generator

//Configurables
LogoOption = rands(0, 2, 1); //random number generator. 0 = ?, 1 = !, 2 = ". Input a number directly if you want one thing in particular. Note, Aalto Visual Design Guidelines at date of writing specify this -should- be random. 

h=100; //extrusion height, in mm
s=1; //scale
x = 400;
y = 400;



//Generator - don't need to edit below here.
if(x > 0){
difference(){cube([x*s,y*s,h]);
{
if(round(LogoOption[0]) == 0) Question(2*h,s,h/2,x,y);
if(round(LogoOption[0]) == 1) Exclame(2*h,s,h/2,x,y);
if(round(LogoOption[0]) == 2) Quote(2*h,s,h/2,x,y);}}
}

else {
if(round(LogoOption[0]) == 0) Question(2*h,s,h/2,0,0);
if(round(LogoOption[0]) == 1) Exclame(2*h,s,h/2,0,0);
if(round(LogoOption[0]) == 2) Quote(2*h,s,h/2,0,0);
}
module Question(h,s,offs,x,y) {
    translate(x,y,offs)
    linear_extrude(height = h, convexity = 10)
    import("Aalto_logo_question.dxf",scale = s); 
}

module Exclame(h,s,offs,x,y) {
    translate(x,y,offs)
    linear_extrude(height = h, convexity = 10)
    import("Aalto_logo_exclame.dxf",,scale = s); 
}

module Quote(h,s,offs,x,y) {
    translate(x,y,offs)
    linear_extrude(height = h, convexity = 10)
    import("Aalto_logo_quote.dxf",scale = s); 
}


