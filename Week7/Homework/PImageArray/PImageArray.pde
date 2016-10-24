int IMG_NUM = 5;
int IMG1_NUM = 2;
int IMG2_NUM = 2;
PImage[] Hero = new PImage[IMG_NUM];
PImage[] Cloud = new PImage[IMG1_NUM];
PImage[] Brick = new PImage[IMG2_NUM];

int animHero = 0;

void setup() {
  size(500,500);
  imageMode(CENTER);
  for (int i = 0; i < Hero.length; i++) {
    for(int j = 0; j < Cloud.length; j++){
      
       Hero[i] = loadImage("Hero"+i+".png");  
       Cloud[j] = loadImage("Cloud"+j+".png"); 
       Brick[j] = loadImage("Brick"+j+".png"); 
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < Hero.length; i++) {
    for(int j = 0; j < Cloud.length; j++){
 
      image(Brick[j],50+i*100,450,100,100);
       image(Cloud[j],100+j*300,100,100,100);
      
    }
  }
  
   image(Hero[animHero], width/2, height/2);
  
   if (frameCount % 10 == 0) {
    animHero++;
  }
  

  if (animHero >= Hero.length) {
    animHero = 0;
  }
}
  