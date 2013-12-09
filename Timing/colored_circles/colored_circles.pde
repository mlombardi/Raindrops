int oldTime=0;
void setup(){
  size(500,500);
  background(255);
  noStroke();
  fill(0,100);
}
void draw(){
  if(millis()-oldTime > 3000){
    fill(random(255),random(255),random(255),100);
    oldTime=millis(); 
  }
  ellipse(mouseX,mouseY,20,20);
}
