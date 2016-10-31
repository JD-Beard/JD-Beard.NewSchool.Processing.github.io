
class Balloon {
  float posX;   
  float posY;   
  float dx;  
  float dy;  
  float sizeChange;
  PImage ballSprite;



  Balloon() {
    posX = width/2;
    posY = height/2;
    dx = random(-3, 3); 
    dy = random(-3, 3);
    sizeChange = 100;
    ballSprite = loadImage("Balloon.png");
  }


  void display() {
    background(#A7FDFF);
    image(ballSprite, posX, posY, sizeChange, sizeChange);
  }


  void update() {

    if (posX < 0 || posX > width) {
      dx *= -1;
      posX += dx;
    } else {
      posX += dx;
    } 

    if (posY < 0 || posY > height) {
      dy *= -1;
      posY += dy;
    } else { 
      posY += dy;
    }
  }


  void ChangeTheSize() {

    sizeChange = random(-100, 200);
  }
}