String[] imageNames = {"beast.png","cyclops.png","gambit.png","rogue.png","jean.png","storm.png","wolverine.png","jubliee.png"};

PImage[] images = new PImage[imageNames.length];
PImage BG;
float lastTimeCheck;
float timeInterval;


void setup(){
  
  size(800,800);
  BG = loadImage("BG.jpg");
   lastTimeCheck = millis();
  timeInterval = 1000;
  
  
  
   for(int i = 0; i< imageNames.length; i++){
    
       String imageName = imageNames[i];
       images[i] = loadImage(imageName);
    
  }
}




void draw(){
  
  

 
  if(millis() > lastTimeCheck + timeInterval){
    
  lastTimeCheck = millis();
  image(BG,0,0);
  float r = random(0,imageNames.length); 
  int startR = int(r);
  PImage img = images[startR];
  image(img,0,0);
  }
   

  
  
  
  
}