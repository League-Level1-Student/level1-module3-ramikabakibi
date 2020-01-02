 int XPosition=500;
int YPosition=500;
int birdVelocity=30;
int pipeXPosition=500;
int pipeYPosition=0;
int pipeHeight=150;
int lowerpipeXPosition=500;
int pipeGap=90;
int lowerpipeYPosition=pipeHeight+pipeGap;
int lowerpipeHeight=1000-lowerpipeYPosition;
void draw(){
   teleportPipes();
   teleportLowerPipe();
   intersectsPipes();
  background(#07B1F2);
  fill(#FAEE03);
  stroke(#050505);
  fill(#61C902);
  rect(pipeXPosition--,pipeYPosition,40,pipeHeight);
  fill(#E0F011);
  ellipse(XPosition,YPosition,40,40);
  
  fill(#61C902);
  rect(lowerpipeXPosition--,lowerpipeYPosition,40,lowerpipeHeight);
  
  int gravity=1;
  YPosition+=gravity;
  
  
  
  
}
  

void setup(){
  size(1000,1000);
  teleportPipes();
}

void mousePressed(){
  YPosition-=birdVelocity;
}

void teleportPipes(){
  if(pipeXPosition<=0){
    pipeXPosition=1000;
    int UpperPipeHeight=(int) random(100,400);
  pipeHeight=UpperPipeHeight;
  }
  
}
void teleportLowerPipe(){
  if(lowerpipeXPosition<=0){
    lowerpipeXPosition=1000;
    lowerpipeYPosition=pipeHeight+pipeGap;
}

}

boolean intersectsPipes() {
     if (YPosition < pipeHeight && XPosition > pipeXPosition && XPosition < (pipeXPosition+40)){
          return true; }
     else if (YPosition>lowerpipeYPosition && XPosition > pipeXPosition && XPosition < (pipeXPosition+40)) {
          return true; }
     else { return false; }
}
