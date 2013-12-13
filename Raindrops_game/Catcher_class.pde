class Catcher {
  PVector loc;
  int d;
  Catcher() {
    loc= new PVector(mouseX, 470);
    d=50;
  }
  void display() {
    loc.x=mouseX;
    fill(250,50,100);
    ellipse(loc.x, loc.y, d, d);
  }
  void update() {
    loc.set(mouseX, 470);
  }
  void catchDrop(Rain drop) {
    if (loc.dist(drop.loc) < d/2 + drop.d/2){
      drop.loc.set(-width, -height);
      drop.vel.set(0,0);
      score++;
    }
  }
}

