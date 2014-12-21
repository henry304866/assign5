Ba mybar;
Brick[]bricks;
Ball bal;

final int GAME_START = 0;
final int GAME_PLAYING = 1;
final int GAME_PAUSE   = 2;
final int GAME_WIN     = 3;
final int GAME_LOSE    = 4;
int status; 
int life;
int nums;
int numb;
void setup() {

  status = GAME_START;
  
  size(640,480); 
  background(0,0,0);
  
  bal = new Ball();
  
  bricks = new Brick[50];
  for(int num = 0 ; num <50; num++){
  
    if(num>0&&num%10==0){
     nums++;}
  bricks[num]= new Brick(145 + (num%10)* 35  ,50 + nums * 30 );}

  mybar = new Ba(100);
  
 
}

void draw(){
  
  background(0,0,0);  
  
  switch(status){
    
    case GAME_START:
    printText("PONG GAME",60,240);
    printText("Press ENTER to Start",20,260); 
  
   break;
   
   case GAME_PLAYING:
   
   background(0,0,0);
   
   drawBall();
   
   for(int num = 0; num<50;num++){
     fill(138, 255, 138);
     if(num>0 && num%10==1){
       numb++;}
     bricks[num].display();}
     
   
  
   drawLife();
   
   fill(255);
   mybar.move();
   mybar.display();
   break;
  }
  
   
   
  
  
}

void printText(String S,int size,int Y){
  textAlign(CENTER);
  textSize(size);
  fill(186, 255, 133);
  text(S,320,Y);
}
void drawLife() {
  fill(230, 74, 96);
  text("LIFE :", 30, 470);
  for(int a = 0 ; a<3 ; a++){
    ellipse(65 + a*20,465,15,15);}
}



void keyPressed() {
   if(key==ENTER){
     status = GAME_PLAYING;
     life=3;
   }
}   

void mousePressed(){
  if(mouseButton==RIGHT && bal.e==false){
    bal.e=true;}
}
void mouseMoved(){
   if(bal.e==false){
   bal.x=mybar.x+50;
   bal.y=mybar.y-5;}
}

void drawBall(){
 if(bal.e==true){
   bal.move();
 
 }
 bal.display();
}
    



