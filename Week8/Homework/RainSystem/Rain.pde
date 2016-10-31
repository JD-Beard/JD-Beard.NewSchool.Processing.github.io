class Rain {


  float r;
  float y;
  float life;


  Rain() {

    r= random(600);
    y=random(-height);
    life = 30;
  }

void display(){
 



  
}

  void update() {
    life--;
        y = y + 7;
    fill(#C9FDFF);
    ellipse(r, y, 5, 5);
    rect(r,y,7,7);
   

    if (y>height) {
      r = random(600);
      y = random(-200);
    }
  }
}