import processing.pdf.*;
//https://www.processing.org/reference/libraries/pdf/index.html

PImage img;

void setup() {
  size(1200, 800,PDF, "export.pdf");
  img = loadImage("port3.jpg");
 
  rectMode(CENTER);
  //noSmooth();
 // stroke(255);
  //noFill();
 // noLoop();
}

void draw() {
  background(255);  
  int widthStep = 15;
  int heightStep = 15;
  
  for (int i = 0; i < width; i += heightStep) {
   beginShape();
    for (int j = 0; j < height; j += widthStep) {
      
      color c = img.get(i, j);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      float total = r + g + b;
      
       float s = map(total, 200, 700, 0, 75);
      
        fill(map(total,0,600,0,350));
     // fill(c);
        pushMatrix();
      translate(i, j);
      //float d = dist(mouseX, mouseY, i, j);
      
      rotate(radians(i+j));
  
      
      ellipse(0,0,s,s);
     // rect(0, 0, 60, 10);
      popMatrix();
      //color c = img.get(int(j + (sin(radians(frameCount+i+j))*5)), i);
      //color c = img.get(int(j + (sin(radians(frameCount+i+j))*10)), i);
      
      //float r = red(c);
      //float g = green(c);
      //float b = blue(c);

      //float brightness = (r+g+b)/3;

     //loat offset = map(brightness, 0, 255, 15, 0);

     // stroke(map(brightness,0,255,150,255));
      
     // curveVertex(j, i+offset);
    }
    endShape();
  }
  exit();
}