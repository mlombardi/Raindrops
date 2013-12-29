PImage drop; 
PImage bucket; 
int score=0;
int oldTime=0;
int currentTime=0;
int index=1;
int lives=3;
int x=350;
int y=200;
int d=100;
boolean run=false;
boolean fail = false;
boolean win = false;
//Creates an array of raindrops
Rain[] r = new Rain[100];
Catcher catcher;
void setup() {
  rect(x, y, d, d);
  textSize(30);
  size(800, 500);
  //loads images
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
  textSize(30);
  //this is the start screen 
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
      //when the raindrop gets to the bottom of the screen, its location goes off the screen and lives decrease by one
      if (r[i].loc.y>=height) {
        lives-=1;
        r[i].loc.set(width*10, -height);
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

  //If the score is 10 or greater, a winner screen with a start over button is displayed
  if (score>=10) {
    fail = true;
    background(0);
    run = false;
    textSize(60);
    fill(100, 200, 100);
    text("WINNER!", 290, 190);
    fill(150, 50, 200);
    rect(x, y, d, d);
    textSize(17);
    fill(0);
    text("Restart", x+18, y+50);
  }
  //If lives reaches 0, a game over screen with a start over button is displayed
  if (lives==0) {
    win = true;
    background(0);
    run = false;
    textSize(60);
    fill(100, 200, 100);
    text("Game Over", 230, 190);
    fill(150, 50, 200);
    rect(x, y, d, d);
    textSize(17);
    fill(0);
    text("Restart", x+18, y+50);
  }
}
//when the start button is pressed, the game will run
void mousePressed() {
  if (mouseX<x+d && mouseX>x  && mouseY<y+d && mouseY>y) {
    if (run == false && fail == false && win == false)
    {
      run = true;
    }
    if (run == false && fail == true && win == false)
    {
      run = true;
      fail = false;
      score = 0;
      lives = 3;
    }
    if (run == false && fail == false && win == true)
    {
      run = true;
      win = false;
      score = 0;
      lives = 3;
    }
  }
}

