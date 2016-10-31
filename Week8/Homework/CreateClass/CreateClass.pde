
Balloon b;

void setup() {
  size(600, 600);
 
  b = new Balloon();
}

void draw() {
  background(255);
  
  b.update();
  b.display();
}



void mousePressed(){
  
  
  
  b.ChangeTheSize();
  
}