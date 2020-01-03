int frogX=400;
int frogY=575;
int frogJumpDistance=1;
void setup() {
  size(800, 600);
}

void draw() {
  frogInBounds();
  background(#007FFA);
  fill(#43BF0F);
  ellipse(frogX, frogY, 40, 40);
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      frogY=frogY-frogJumpDistance;
    } else if (keyCode == DOWN)
    {
      frogY=frogy+frogJumpDistance;
    } else if (keyCode == RIGHT)
    {
      frogX=frogX=frogJumpDistance;
    } else if (keyCode == LEFT)
    {
      frogX=frogX-frogJumpDistance;
    }
  }
}

boolean frogInBounds() {//do something here(ask Daniel about frogJumpDistance in this method:)
  if(frogX!=0){
    frogX--;
  }
}
