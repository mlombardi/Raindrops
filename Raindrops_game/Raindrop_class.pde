class Rain {
  PVector loc;
  PVector vel;
  int d;

  Rain() {
    d=10;
    loc = new PVector(random(0,500),0);
    vel = new PVector(0, 1);
 
  }

  void display() {
    ellipse(loc.x,loc.y,d,d);
  }
  void drop() {
    loc.add(vel);
    if(loc.y>height){
      loc.y=0;
    }
  }
}
  
