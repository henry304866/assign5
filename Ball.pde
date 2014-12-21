class Ball{
  float x ;
  float y ;
  float xSpeed ; 
  float ySpeed ;
  float size ;
  boolean e;


void move(){
  
  x+=xSpeed;
  y+=ySpeed;
  if(x<0 || x>width){
  xSpeed *= -1;
 }
  if(y<0||y>height){
  
  ySpeed *= -1;
  }
}

void display(){
   
    ellipse(x,y,size,size);
  }
  
  Ball(){
   
   
    x = 50;
    y = height - 45;
    xSpeed = - random(5);
    ySpeed = - random(10);
    size = 10;
    
  }
  
}
