// the code in this block runs once //<>// //<>//
// at the begining of the program
void setup(){
  size(888,888);
}

// the code in this block runs once
// every frame of the program
void draw(){
  background(#1787CB);
  square(300, 300, 299);
  
  if (frameCount == 1){
  save("bluesquare.png");
  }
}
