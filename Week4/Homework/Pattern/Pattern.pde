//Use a Rectangle to form a pattern.
//Make the Rectangle go from up to down then begin again.
//Make the Rectangle loop from top to bottom.
// use the mousePressed function to make the rect size grow while you hold the button down.
// use a map to control a shade of the color to be from a range.



int x = 0;
int y = 0;
float SqSize;
float circleSize;


void setup() {
  size(600,600);
  background(0);
  SqSize = 30;
  circleSize = 10;
  noStroke();
 

}



void draw() {

  
  y+=5;
  translate(x,y); 
  Sq();
 

 
  
if (y > height) { // make it repeat.
   y= 0;
    x += 20;
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


void mousePressed(){

  SqSize += 10; // change the size of the objects
  circleSize += 5;// change the size.
}