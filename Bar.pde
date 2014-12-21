class Ba{
// properties
 float x;
 float y;
 float  barlength;
 float thickness;
// methods
 void move(){
    x =  mouseX;  
    if( x+100 >= width){
      x = width - 100;}
 }
 
 void display(){
  rect(x,y,barlength,thickness);
 }

// constructor
 Ba(float l){

 y = height - 40 ;
 barlength = l; 
 thickness = 10;
 fill(255);
 }
}
