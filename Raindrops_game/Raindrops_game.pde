int score=0;
int oldTime=0;
int currentTime=0;
int index=1;
Rain[] r = new Rain[100];
Catcher catcher;
void setup() {
  textSize(30);
  size(500, 500);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Rain();
  }
  catcher = new Catcher();
}

void draw() {
  background(0, 20, 100);
  for (int i = 0; i < index; i++) {
    r[i].display();
    r[i].drop();
    catcher.catchDrop(r[i]);
  }
  catcher.display();
  catcher.update();
  text(score, 450, 50);
  currentTime=millis();
  if (currentTime-oldTime >= 3000) {
    oldTime=currentTime;
    index++;
  }
  if(score>=10){
    text("Winner!", 200,height/2);
  }
}

