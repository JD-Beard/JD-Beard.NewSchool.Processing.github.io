Rain r1;

int numRainDrops = 30;
Rain[] drops = new Rain[numRainDrops];

void setup() {
  size(600, 600);
  background(0);
  smooth();

  for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); 
    r1 = new Rain();
  }
}



void draw() {


  fill(255, 80);
  rect(0, 0, 600, 600);

  for (int i = 0; i < drops.length; i++) {
  drops[i].update();
  }

  r1.display();
  
 
}