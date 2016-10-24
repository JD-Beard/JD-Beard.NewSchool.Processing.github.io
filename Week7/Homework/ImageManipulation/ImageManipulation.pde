PImage img;
PImage img1;

void setup() {
  size(660, 990);
  img = loadImage("portrait.jpg");
  img1 = loadImage("portrait.jpg");
  noStroke();

}

void draw() {
  background(0);
  
  int widthStep = 50;
  int heightStep = 1;
  
  for (int i = 0; i < width; i+=widthStep) {
   for (int j = 0; j < height; j+=heightStep) {
     color c = img.get(i, j);
     fill(c);
     rect(i, j,10, 10);
     
    
      color t = img1.get(i,j);
      float r = red(t);
      float g = green(t);
      float b = blue(t);
      
      float brightness = (r+g+b)/1;

      float w = map(brightness,0,255,5,0);
      float h = map(brightness,0,255,40,0);
      
      pushMatrix();
      translate(i,j);
      fill(c);
      rotate(i+j+radians(frameCount));
      rect(0, 0, w, h);
      popMatrix();
  
   }
  }
  
  
  color c = get(mouseX,mouseY);
  fill(c);
  ellipse(mouseX,mouseY,80,80);
  
  float r = red(c);
  float g = green(c);
  float b = blue(c);
  
  println("color of selected pixel-->\tr: " + r + "\tg: " + g + "\tb: " + b);
  
  
}
 
  