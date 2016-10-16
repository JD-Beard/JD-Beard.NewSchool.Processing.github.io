
int[] ellipseXPos = new int[200];

void setup() {
  size(1000, 600);

  for (int i = 0; i < ellipseXPos.length; i++) {
    ellipseXPos[i] = 5000;
  }
}

void draw() {
  fill(#B2FFE6);
  noStroke();
  rect(0,0,width,height);
  
  
  stroke(0);
  for (int i = 0; i < ellipseXPos.length; i++) {
    fill(map(i, 0, ellipseXPos.length, 0, 55));
    ellipse(ellipseXPos[i], i * 20, 5+i, 5*2);
     if (ellipseXPos[i] < width) {
      ellipseXPos[i] += i;
    } else {
      ellipseXPos[i] = 0;
    }
  }


}