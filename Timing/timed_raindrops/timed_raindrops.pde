int index=0;
Rain []raindrop = new Rain[600];
void setup(){
  size(500,500);
  for(int i<0, i < raindrop.length, i++){
  raindrop[i]= new Rain();
  }
 void draw(){
   background(200,50,200);
   for(int i=0, i<index, i++){
     raindrop[i].display();
     raindrop[i].drop();
   }
  void mousePressed(){
    if(index<raindrop.length){
      index++;
    }
  }
    
