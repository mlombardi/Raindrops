PImage drop; 
PImage bucket; 
int score=0;
int oldTime=0;
int currentTime=0;
int index=1;
int lives=3;
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
      //when the raindrop gets to the bottom of the screen, its location goes off the screen
      if (r[i].loc.y>=height) {
        lives-=1;
        r[i].loc.set(width*10, height*10);
        r[i].vel.set(0, 0);
      }
    }
    catcher.display();
    catcher.update();
    //The score is displayed in the top right corner
     text("Score=", 650, 50);
    text(score, 750, 50);
    //lives are displayed in the top left corner
    text(lives, 125, 50);
    text("Lives=", 30, 50);
    currentTime=millis();
    //a raindrop falls every 3 seconds
    if (currentTime-oldTime >= 3000) {
      oldTime=currentTime;
      index++;
      println("Time: " + currentTime);
    }
  }

  //If the score is 10 or greater a winner message is displayed in the center of the screen
  if (score>=2) {
    background(0);
    textSize(60);
    text("WINNER!", 290, 270);
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

