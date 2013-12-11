int score=0;
Rain[] r = new Rain[10];
Catcher catcher;
void setup() {
  size(500, 500);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Rain();
  }
  catcher = new Catcher();
}

void draw() {
  println("score=" + score);
  background(0, 20, 100);
  for (int i = 0; i < r.length; i++) {
    r[i].display();
    r[i].drop();
    catcher.catchDrop(r[i]);
  }
  catcher.display();
  catcher.update();
}

