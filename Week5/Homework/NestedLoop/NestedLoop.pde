

void setup(){
  
  size(600,600);
  background(255);
  
}



void draw(){
  
  
  for (int i = 0; i <= 20; i++) {
  for (int j = 0; j <= 20; j++) {

    
    float rectPosX = map(i,0,20,0,width);
    float rectPosY = map(j,0,20,0,height);
    float rectSize = map(i, 0, 20, 10, 50);
      
     
      float rectColor = map(j, 0, 20, 0, 255);
        float rectColor1 = map(i, 100, 255, 0, 255);
          float rectColor2 = map(i, 0, 200, 0, 255);
          float d = dist(mouseX, mouseY,i,j);
   
      fill(rectColor+d,rectColor1+d,rectColor2);
      rect(rectPosX+d,rectPosY+d,rectSize,rectSize);
    
  }
}
  
}