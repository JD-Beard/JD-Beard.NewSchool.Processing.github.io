ArrayList<Walker> walkerList = new ArrayList<Walker>();
ArrayList<LeftSide> LeftSideList = new ArrayList<LeftSide>();


void setup() {
  size(1000, 700);
  noStroke();
  background(0);

}

void draw() {
  for (Walker walker : walkerList) {
    walker.move();
    walker.display();
  }
  
   for (LeftSide leftside : LeftSideList) {
    leftside.move();
    leftside.display();
  }
  
  
}

void mouseMoved() {
 walkerList.add(new Walker(mouseX, mouseY));
 LeftSideList.add(new LeftSide(mouseX, mouseY));
}

class Walker {
  float x, y, xStep, yStep, siz, siz2, shakeX, shakeY;

  Walker(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 5;
    this.siz2 = 40;
    this.shakeX = random(-5, 5);
    this.shakeY = random(-5, 5);
    this.xStep = this.siz * 10;
    this.yStep = this.siz * 10;
  }

  void display() {
    fill(random(255), random(255), random(255));
    rect(x+shakeX, y+shakeY, siz, siz2);
    ellipse(y+shakeY, x+shakeX, 40, 2);
  }

  void move() {
    int rand = (int)random(4);
    switch (rand) {
    case 0:
      x-=xStep;
      break;
    case 1:
      x+=xStep;
      break;
    case 2:
      y-=yStep;
      break;
    case 3:
      y+=yStep;
      break;
    default:
      break;
    }
  }
}





class LeftSide {
  float x, y, xStep, yStep, siz, siz2, shakeX, shakeY;

  LeftSide(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 40;
    this.siz2 = 5;
    this.shakeX = random(-5, 5);
    this.shakeY = random(-5, 5);
    this.xStep = this.siz * 2;
    this.yStep = this.siz * 2;
  }

  void display() {
    fill(random(255), random(255), random(255));
    rect(x+shakeX, y+shakeY, siz, siz2);
 
  }

  void move() {
    int rand = (int)random(4);
    switch (rand) {
    case 0:
      x+=xStep;
      break;
    case 1:
      x-=xStep;
      break;
    case 2:
     y+=yStep;
      break;
    case 3:
      y-=yStep;
      break;
    default:
      break;
    }
  }
}