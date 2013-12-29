//Create a catcher class
class Catcher {
  PVector loc;
  int d;
  //The catcher is located near bottom of screen and moves left and right with the mouse
  Catcher() {
    loc= new PVector(mouseX, 415);
    d=100;
  }
  //Display the catcher
  void display() {
    loc.x=mouseX;
    fill(250, 50, 100);
    image(bucket, loc.x, loc.y, d, d);
  }
  void update() {
    loc.set(mouseX, 415);
  }
  //if a raindrop touches the catcher, it goes off the screeen, velocity goes to 0, and score increases by 1
  void catchDrop(Rain drop) {
    if (loc.dist(drop.loc) < d*0.4 + drop.d/2) {
      drop.loc.set(-width, -height);
      drop.vel.set(0, 0);
      score++;
    }
  }
}

