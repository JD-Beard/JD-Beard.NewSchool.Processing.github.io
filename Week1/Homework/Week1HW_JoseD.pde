float r, g, b;
int time;
int timeWait;


void setup(){
  
  size(800,800);
  r = random(100,255);
  b = random(100,255);
  g = random(50,255);
 time = second();
 timeWait = 5;
  
  
}


void draw(){
  
 if(second() - time >= timeWait){
   
   r = random(20,200);
  b = random(50,150);
 g = random(90,220);
  
 }
  
  fill(random(r),random(g),random(b));
  rect(0,0,50,800);
    fill(0);
  rect(50,0,50,800);
      fill(random(r),random(g),random(b));
  rect(100,0,50,800);
    fill(0);
  rect(150,0,50,800);
      fill(random(r),random(g),random(b));
  rect(200,0,50,800);
    fill(0);
  rect(250,0,50,800);
      fill(random(r),random(g),random(b));
  rect(300,0,50,800);
    fill(0);
  rect(350,0,50,800);
      fill(random(r),random(g),random(b));
  rect(400,0,50,800);
    fill(0);
  rect(450,0,50,800);
      fill(random(r),random(g),random(b));;
  rect(500,0,50,800);
    fill(0);
  rect(550,0,50,800);
      fill(random(r),random(g),random(b));
  rect(600,0,50,800);
    fill(0);
  rect(650,0,50,800);
      fill(random(r),random(g),random(b));
   rect(700,0,50,800);
     fill(0);
  rect(750,0,50,800);
      fill(random(r),random(g),random(b));
    
  
  
  
}