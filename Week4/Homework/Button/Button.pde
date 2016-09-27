//Use a Rectangle to form a pattern.
//Make the Rectangle go from up to down then begin again.
//Make the Rectangle loop from top to bottom.
// use the mousePressed function to make the rect size grow while you hold the button down.
// use a map to control a shade of the color to be from a range.



int x = 0;
int y = 0;
float SqSize;
float circleSize;
int buttonX, buttonY, buttonSize;
boolean buttonPressed = false;
boolean buttonTwoPressed = false;
boolean buttonThreePressed = false;


void setup() {
  size(600,600);
  background(0);
  SqSize = 30;
  circleSize = 10;
  noStroke();
  buttonX = width/2;
  buttonY = height/2;
  buttonSize = 100;
  fill(255);
  text("Button 1 Start Pattern",50,380);
  text("Button 2 Start 2nd Pattern",430,380);
  text("Button 3 Change Size",250,570);
  fill(#FFCA58);
  ellipse(buttonX-200,buttonY,buttonSize,buttonSize);
  ellipse(buttonX+200,buttonY,buttonSize,buttonSize);
  ellipse(buttonX+10,buttonY+200,buttonSize,buttonSize);

 

}



void draw() {

  if(buttonPressed){
  y+=5;
  translate(x,y); 
  Sq();
 

  
if (y > height) { // make it repeat.
   y= 0;
    x += 20;
 }
  }
  
  if(buttonTwoPressed){
  x+=5;
  translate(x,y); 
  SideSq();
 

  
if (x > width) { // make it repeat.
   x= 0;
    y+= 20;
 }
  }
  
 
  
  
  
   if(buttonThreePressed){
  
 
    SqSize += 1;


   }

  
  

}

void Sq(){
   float r = map(x, 0, width, 0, 255); // the control maps for color
   float g = map(y, 0, height, 0, 255);// the control maps for color
   fill(r,g,150);// filling the objects
   rect(x,y,SqSize,SqSize); // the main block
   ellipse(x,y,circleSize,circleSize);//cool cirlce.
   ellipse(x+30,y,circleSize,circleSize);// cool cirlce
  
  
}

void SideSq(){
  
    float r = map(x, 0, width, 0, 255); // the control maps for color
   float g = map(y, 0, height, 0, 255);// the control maps for color
   fill(r,g,150);// filling the objects
   rect(x,y,SqSize,SqSize); // the main block
   ellipse(x,y,circleSize,circleSize);//cool cirlce.
   ellipse(x,y+30,circleSize,circleSize);// cool cirlce
  
  
}


void mousePressed(){
 float distance = dist(mouseX, mouseY, buttonX-200, buttonY);// first button
 float twoButton = dist(mouseX, mouseY, buttonX+200, buttonY); // 2nd button
 float threeButton = dist(mouseX, mouseY, buttonX+10, buttonY+200); // 2nd button

  if (distance < buttonSize/2) {
    buttonPressed = !buttonPressed; // checking to see if the button is Pressed.
  }
  
  if(twoButton < buttonSize/2){
    
    buttonTwoPressed = !buttonTwoPressed; // checking to see if the button is Pressed.
  }
  
   if(threeButton < buttonSize/2){
    
    buttonThreePressed = !buttonThreePressed; // checking to see if the button is Pressed.
  }
  
  
  
}