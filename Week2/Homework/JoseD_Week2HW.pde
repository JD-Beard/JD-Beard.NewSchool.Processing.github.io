
int moveballX;
float x, y, recX, recY;
float rotAngle = 45;
float w,h;
int scene;


void setup() {
  size(600, 600);
  moveballX=0;
  scene = 0;
  w = 50;
  h = 50;
}

void draw() {
  
  switch(scene){
    case 0:
  background(#52C2F5);
  textSize(15);
  text("Press Space To Change Scene", 50,50);

  Building();
  MovingCar();
  Windows();
  break;
  
  case 1:
  
  background(255);
  fill(0);
  textSize(15);
  text("Press Space To Change Scene", 50,50);
  mouseMoved();
  recX=mouseX;
  recY=mouseY;
  fill(random(200), random(200), random(200), random(200));
  triangle(recX,recY,random(200), random(200),random(200),random(200));
  rect(recX,recY, random(200),random(200));
  break;
  
  case 2:
  background(255);
  Spin();
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

void Spin(){
  
  
  //first Push
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rotAngle));
  rectMode(CENTER);
  fill(0);
  rect(0, 0, w, h);
  rotAngle++;
  ellipseMode(CORNER);
  ellipse(50,0,w/2,h/2);
  
  //2nd push
  pushMatrix();
  translate(100,0);
  rotate(radians(rotAngle));
  triangle(30,0,0,0,w/2,h/2);
  
  
  //3rd push
  
  pushMatrix();
  translate(50,0);
  rotate(radians(rotAngle));
  fill(random(200), random(200), random(200), random(200));
  ellipse(10,0,random(200), random(200));
  popMatrix();
  popMatrix();
  popMatrix();

  
  
}


void keyPressed(){
  
  if(key==' ')
  scene++;
  
  
}