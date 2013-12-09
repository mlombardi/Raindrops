class Catcher{
  PVector loc;
  int r;
  Catcher() {
    loc= new PVector(mouseX,470);
    r=100;
  }
  void display(){
    loc.x=mouseX;
    ellipse(loc.x,loc.y,50,50);
  }
  void update(){
    loc.set(mouseX,470);
}
}


