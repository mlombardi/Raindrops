PImage drop; 
PImage bucket; 
int score=0;
int oldTime=0;
int currentTime=0;
int index=1;
//Creates an array of raindrops 
int x=350;
int y=200;
int d=100;
boolean run=false;
//Creates an array of raindrops
Rain[] r = new Rain[100];
Catcher catcher;
void setup() {
  rect(x, y, d, d);
  textSize(30);
  size(800, 500);
  drop= loadImage("drop.png");
  bucket= loadImage("bucket.png");
  //Initializes the raindrops
  for (int i = 0; i < r.length; i++) {
    r[i] = new Rain();
  }
  //Creates the object from the class 
  catcher = new Catcher();
}

void draw() {
  background(0, 20, 100);
  //Allows one raindrop to fall
  for (int i = 0; i < index; i++) {
    r[i].display();
    r[i].drop();
    catcher.catchDrop(r[i]);
  }
  catcher.display();
  catcher.update();
  //The score is displayed in the top right corner
  text(score, 750, 50);
  currentTime=millis();
  //a raindrop falls every 3 seconds
  if (currentTime-oldTime >= 3000) {
    oldTime=currentTime;
    index++;
  }
  if (run==false) {
    background(255);
    fill(150, 50, 200);
    rect(x, y, d, d);
    fill(0);
    text("Start", x+20, y+60);
  }
  else {
    //Allows one raindrop to fall
    for (int i = 0; i < index; i++) {
      r[i].display();
      r[i].drop();
      catcher.catchDrop(r[i]);
    }
    catcher.display();
    catcher.update();
    //The score is displayed in the top right corner
    text(score, 750, 50);
    currentTime=millis();
    //a raindrop falls every 3 seconds
    if (currentTime-oldTime >= 3000) {
      oldTime=currentTime;
      index++;
      println("Time: " + currentTime);
    }
  }
  //If the score is 10 or greater a winner message is displayed in the center of the screen
  if (score>=10) {
    text("Winner!", 200, height/2);
  }
}
void mousePressed() {
  if (mouseX<x+d && mouseX>x  && mouseY<y+d && mouseY>y) {
    run = true;
  }
  else if (mouseX<x+d && mouseX>x  && mouseY<y+d && mouseY>y) {
    run = false;
  }
}


