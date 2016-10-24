import processing.pdf.*;
//https://www.processing.org/reference/libraries/pdf/index.html

PImage img;

void setup() {
  size(1200, 800,PDF, "export.pdf");
  img = loadImage("Port6.jpg");
 
  rectMode(CENTER);
 
}

void draw() {
  background(255);  
  int widthStep = 20;
  int heightStep = 20;
  
  for (int i = 0; i < width; i += widthStep) {
   beginShape();
    for (int j = 0; j < height; j += heightStep) {
  
  
      color c = img.get(i, j);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      
      float brightness = (r+g+b)/8;

      float w = map(brightness,0,255,15,0);
      float h = map(brightness,0,255,20,0);
      
      pushMatrix();
      translate(i,j);
      fill(c);
      ellipse(w, h, 15, 15);
      rect(0,0,5,20);
      popMatrix();
    
  }
     
    
    endShape();
  }
  exit();
}