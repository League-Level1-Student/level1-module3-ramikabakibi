int frogX=400;
int frogY=575;
int frogJumpDistance=25;
Car car2=new Car( 450, 200, 100, 10);
Car car3=new Car(750, 400, 120, 10);
 Car car=new Car(250,300,80,10);
void setup() {
  size(800, 600);
}

void draw() {
  frogInBounds();
  background(#007FFA);
  fill(#43BF0F);
  ellipse(frogX, frogY, 40, 40);
  car.moveCarRight();  
car.display();
car2.moveCarLeft();
car2.display();
car3.moveCarRight();
car3.display();
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      frogY=frogY-frogJumpDistance;
    } else if (keyCode == DOWN)
    {
      frogY=frogY+frogJumpDistance;
    } else if (keyCode == RIGHT)
    {
      frogX=frogX+frogJumpDistance;
    } else if (keyCode == LEFT)
    {
      frogX=frogX-frogJumpDistance;
    }
  }
}

boolean frogInBounds() {
  if(frogX>=800){
    frogX-=frogJumpDistance;
    return true;
  }
  else if(frogX<=0){
    frogX+=frogJumpDistance;
    return true;
  }
  else if(frogY>=600){
    frogY-=frogJumpDistance;
    return true;
  }
  else if(frogY<=0){
    frogY+=frogJumpDistance;
    return true;
  }
  else{
    return false;
  }
}
public class Car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  void display(){
 
    fill(0,255,0);
    rect(carX , carY,  carSize, 50);
  }
 void moveCarRight(){
   carX+=carSpeed;
  
   if(carX>=width){
     carX=0;
   }
 }
 void moveCarLeft(){
   carX-=carSpeed;
   
   if(carX<=0){
     carX=width;
   }
   
 }
  Car(int carX, int carY, int carSize , int carSpeed){
    this.carX=carX;
    this.carY=carY;
    this.carSize=carSize;
    this.carSpeed=carSpeed;
  }
}
