int XPosition=200;
int YPosition=500;
int birdVelocity=30;
int pipeXPosition=900;
int pipeYPosition=0;
int pipeHeight=150;
int lowerpipeXPosition=900;
int pipeGap=90;
int lowerpipeYPosition=pipeHeight+pipeGap;
int lowerpipeHeight=1000-lowerpipeYPosition;
boolean gameInProgress=true;
int score=0;
void draw() {
  addScore();
  teleportPipes();
  teleportLowerPipe();
 
  if (intersectsPipes()) {


    gameInProgress=false;
  }
  if (gameInProgress) {
    background(#07B1F2);
    fill(#FC1C1C);
  text(score, 100, 200);
    fill(#FAEE03);
    stroke(#050505);
    fill(#61C902);
    pipeXPosition-=3;
    rect(pipeXPosition, pipeYPosition, 40, pipeHeight);
    fill(#E0F011);
    ellipse(XPosition, YPosition, 40, 40);

    fill(#61C902);
    lowerpipeXPosition-=3;
    rect(lowerpipeXPosition, lowerpipeYPosition, 40, lowerpipeHeight);

    int gravity=1;
    YPosition+=gravity;
  } else {
    text("game over", 100, 100);
    print("game over");
  }
}


void setup() {
  size(1000, 1000);
  teleportPipes();
}

void mousePressed() {
  YPosition-=birdVelocity;
}

void teleportPipes() {
  if (pipeXPosition<=0) {
    pipeXPosition=1000;
    int UpperPipeHeight=(int) random(100, 400);
    pipeHeight=UpperPipeHeight;
  }
}
void teleportLowerPipe() {
  if (lowerpipeXPosition<=0) {
    lowerpipeXPosition=1000;
    lowerpipeYPosition=pipeHeight+pipeGap;
  }
}

boolean intersectsPipes() {
  if (YPosition < pipeHeight && XPosition > pipeXPosition && XPosition < (pipeXPosition+40)) {
    return true;
  } else if (YPosition>lowerpipeYPosition && XPosition > pipeXPosition && XPosition < (pipeXPosition+40)) {
    return true;
  } else { 
    return false;
  }
}

boolean addScore() {
  if (XPosition > pipeXPosition+40 && XPosition < pipeXPosition+44) {
    score++;
    return true;
  }
  return false;
}
