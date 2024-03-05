void setup(){ //<>//
  size(888,888);
}

void draw(){
  background(#1787CB);
  
  strokeWeight(10);
  point(300, 300);
  line(100, 100, 100, 100);
  square(300, 300, 299);
  quad(200, 300, 400, 100, 300, 100, 250, 500);
  
  if (frameCount == 1){
  save("bluesquare.png");
  }
}
