Rain[] r = new Rain[1];
Catcher catcher;
void setup() {
  size(500, 500);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Rain();
  }
    catcher = new Catcher();
  }

void draw() {
  background(0,20,100);
  for (int i = 0; i < r.length; i++) {
    r[i].display();
    r[i].drop();
    catcher.display();
    catcher.update();
  }
}
