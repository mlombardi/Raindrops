color c= color(0);
void setup(){
  size(600,200);
  textSize(100);
  textAlign(CENTER);
  frameRate(20);
}
void draw(){
  background(c);
  if(frameCount%100==0){
    c=color(random(255),random(255),random(255));
  }
  text(frameCount,width/2,height*.75);
}
