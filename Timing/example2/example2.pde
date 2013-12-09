int oldTime = 0;
int currentTime = 0;
void setup(){
  size(600,600);
  background(0);
}
void draw(){
  println("currentTime"+currentTime);
  ellipse(mouseX,mouseY,50,50);
}
  
