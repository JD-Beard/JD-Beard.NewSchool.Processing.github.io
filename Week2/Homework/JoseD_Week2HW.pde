
int moveballX;
float x, y, recX, recY;
float rotAngle = 45;
float rotBack = 20;
float spinTime = -90;
float w, h;
int scene;
float clockX, clockY, clockSizeX, clockSizeY;
int changeColor;
int Color;





void setup() {
  size(600, 600);
  moveballX=0;
  scene = 0;
  w = 50;
  h = 50;
  clockX = -20;
  clockY = -20;
  clockSizeX = 400;
  clockSizeY = 400;
}

void draw() {

  switch(scene) {
  case 0:
    background(#52C2F5);
    textSize(15);
    text("Press Space To Change Scene", 50, 50);

    Building();
    MovingCar();
    Windows();
    break;

  case 1:

    ChangeWithRainbow();
    break;

  case 2:
    background(255);
    InTime();

    break;


  case 3:
    background(255);
    OutTime();
    break;
  }
}


void MovingCar() {

  fill(#747272); // floor color
  rect(0, 400, 600, 600); //floor
  fill(255);
  rect(50, 450, 60, 10);//lines
  rect(50, 550, 60, 10);//lines
  rect(200, 450, 60, 10);//lines
  rect(400, 450, 60, 10);//lines

  rect(200, 550, 60, 10);//lines
  rect(400, 550, 60, 10);//lines
  fill(#CB4D1F);
  fill(#FA052A);                            
  rect(moveballX, 450, 175, 60);
  fill(#73D3ED);
  rect(moveballX+50, 450, 60, 35);
  fill(#676061);
  ellipse(moveballX+25, 500, 40, 40);//wheels
  ellipse(moveballX+150, 500, 40, 40);//wheels
  fill(#434242);
  ellipse(moveballX+25, 500, 30, 30);//wheel inner
  ellipse(moveballX+150, 500, 30, 30);//wheel inner
  moveballX=moveballX+3;
}


void Building() {

  fill(#CBCBCB);
  rect(25, 100, 100, 400);//building
  rect(150, 125, 100, 400);
  rect(275, 50, 75, 400);
  rect(375, 125, 75, 400);
  rect(480, 100, 100, 400);
}


void Windows() {

  fill(#F8FF98);
  rect(40, 125, 20, 30);
  rect(40, 225, 20, 30);
  rect(90, 125, 20, 30);
  rect(90, 225, 20, 30);

  rect(170, 150, 20, 30);
  rect(170, 225, 20, 30);
  rect(210, 150, 20, 30);
  rect(210, 225, 20, 30);

  rect(290, 100, 20, 30);
  rect(290, 200, 20, 30);
  rect(320, 100, 20, 30);
  rect(320, 200, 20, 30);

  rect(390, 170, 20, 30);
  rect(390, 250, 20, 30);
  rect(420, 170, 20, 30);
  rect(420, 250, 20, 30);

  rect(490, 170, 20, 30);
  rect(490, 250, 20, 30);
  rect(550, 170, 20, 30);
  rect(550, 250, 20, 30);
}

void InTime() {



  //first Push
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rotAngle));
  rectMode(CENTER);
  text("Press space for next scene", 70, 40);
  fill(0);
  rect(0, 0, w, h);
  rect(50, 50, 10, 10);
  rect(150, 150, 10, 10);
  rect(-50, -50, 10, 10);
  rect(-150, -150, 10, 10);
  rotAngle++;

  //2nd push
  pushMatrix();
  translate(100, 0);
  rotate(radians(rotAngle));
  triangle(30, 0, 0, 0, w/2, h/2);
  //3rd push
  pushMatrix();
  translate(50, 0);
  rotate(radians(rotAngle));
  fill(random(200), random(200), random(200), random(200));
  line(10, 0, random(200), random(200));
  //4th push
  pushMatrix();
  translate(50, 0);
  rotate(radians(rotBack));
  fill(0);
  rect(100, 100, 5, 5);
  //5th
  pushMatrix();
  translate(300, 50);
  rotate(radians(rotAngle));
  ellipse(0, 0, 20, 20);

  popMatrix();//first pop
  translate(50, 0);
  rotate(radians(rotAngle));
  fill(random(100), random(100), random(100), random(200));
  ellipse(10, 0, random(200), random(200));
  rotate(radians(rotAngle));
  triangle(30, 0, 0, 0, w/2, h/2);
  triangle(200, 0, 0, 0, w/2, h/2);

  popMatrix();//2nd pop
  translate(50, 0);
  rotate(radians(rotAngle));
  triangle(150, 0, 0, 0, w/2, h/2);
  triangle(200, 0, 0, 0, w/2, h/2);
  fill(0);
  stroke(9);
  line(10, 0, random(200), random(200));
  line(90, 0, random(200), random(200));
  popMatrix();//3rd pop
  translate(200, 0);
  rotate(radians(rotAngle));
  triangle(150, 0, 0, 0, w/2, h/2);
  triangle(300, 0, 0, 0, w/2, h/2);
  fill(0);
  stroke(9);
  line(10, 0, random(200), random(200));
  line(90, 0, random(200), random(200));
  popMatrix();
  noStroke();
  popMatrix();
}

void OutTime() {

  pushMatrix();
  translate(width/2, height/2);
  stroke(10);
  fill(255);
  ellipse(clockX, clockY, clockSizeX, clockSizeY);



  popMatrix();
  translate(300, 250);
  rotate(radians(spinTime));
  fill(0);
  ellipse(180, 180, 2, 2);
  ellipse(160, 160, 5, 5);
  ellipse(140, 140, 10, 10);
  ellipse(120, 120, 15, 15);
  ellipse(100, 100, 20, 20);
  ellipse(80, 80, 20, 20);
  ellipse(60, 60, 20, 20);
  ellipse(40, 40, 20, 20);
  line(40, 40, 20, 20);
  text("What has hands", 140, 100);
  text("But no arms", 140, 120);
  text("and a face but no eyes?", 140, 140);

  spinTime++;
}

void ChangeWithRainbow() {
  text("Press Space For Next Scene",175,100);
  stroke(abs(mouseX - pmouseX));
  strokeWeight(1);
  rect(mouseX, mouseY, pmouseX, pmouseY);
  fill(mouseX, mouseY, Color, 50);
  strokeWeight(abs(mouseX - pmouseX));
  rotate(radians(spinTime));
  spinTime++;
}


void keyPressed() {

  if (key==' ')
    scene++;
  background(0);
}


void mousePressed() {


  changeColor = int(random(0, 255));
  Color = changeColor;
}