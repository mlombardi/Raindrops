//Create a rain class
class Rain {
  PVector loc;
  PVector vel;
  int d;
  int lives=3;

  Rain() {
    d=30;
    //The raindrops will appear at a random x value from 0-500 and a y value of 0
    loc = new PVector(random(0, 500), 0);
    vel = new PVector(0, 2);
  }
  //This displays the raindrops
  void display() {  
    image(drop, loc.x, loc.y, d, d);
  }
  void drop() {
    loc.add(vel);
  }
}

