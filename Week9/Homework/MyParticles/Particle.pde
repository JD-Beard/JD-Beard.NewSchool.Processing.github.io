class Particle {
  float s; // size
  float a; // alpha
  float lifetime;
  PVector pos;
  PVector accX;
  PVector accY;

  Particle(float _x, float _y) {
    pos = new PVector(_x, _y);
    accX = new PVector(random(-0.6, 0.6), 0);
    accY = new PVector(0, random(1, 4));

    s = 40;
    a = 40;
    lifetime = 100;
  }

  void update() {
    lifetime--;
    pos.sub(accY);
    pos.add(accX);


    s = map(a, 40, 0, 30, 150);

    if (a > 0) {
      a-=0.1;
    }
  }

  void display() {
    fill(200, a);
    ellipse(pos.x-40, pos.y-20, s, sin(s) *10);
    fill(255, 0, 0, a);
    ellipse(pos.x-40, pos.y+20, s, sin(s) *40);
    fill(#FFE70D, a);
    ellipse(pos.x-40, pos.y+50, s ,sin(s) *20);
     fill(#7152FF, a);
    ellipse(pos.x-40, pos.y+60, s ,sin(s) *10);
  }
}