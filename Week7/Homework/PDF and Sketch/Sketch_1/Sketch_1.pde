import processing.pdf.*;
//https://www.processing.org/reference/libraries/pdf/index.html

PImage img;

void setup() {
  size(1200, 800,PDF, "1.pdf");
  img = loadImage("port2.jpg");
  noSmooth();
  stroke(255);
  noFill();
  noLoop();
}

void draw() {
  background(0);  
  int widthStep = 10;
  int heightStep = 10;
  
  for (int i = 0; i <= height; i += heightStep) {
   beginShape();
    for (int j = 0; j <= width; j += widthStep) {
      
      color c = img.get(j, i);
      //color c = img.get(int(j + (sin(radians(frameCount+i+j))*5)), i);
      //color c = img.get(int(j + (sin(radians(frameCount+i+j))*10)), i);
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);

      float brightness = (r+g+b)/2;

     float offset = map(brightness, 0, 255, 15, 0);

      stroke(map(brightness,0,255,150,255));
      
      curveVertex(j, i+offset);
    }
    endShape();
  }
  exit();
}