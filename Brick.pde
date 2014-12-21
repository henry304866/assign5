class Brick{

float brickx;
float bricky;
float bricklength;
float brickthickness;


void display(){
  rect(brickx,bricky,bricklength,brickthickness);
}

Brick(float k,float r){
  

  brickx = k;
  bricky = r ; 
  bricklength = 25;
  brickthickness = 25;
}

}
