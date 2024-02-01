// New York City I, 1942 by Piet Mondrian
// Make the canvas
void setup(){
  size(888,888);
}

// Make the background old paper white
void draw(){
  background(#FFFFFF);
  strokeWeight(5);
  noFill();
  square(300, 300, 300);
  rotate( radians(1) );
  square(300, 300, 300);
  rotate(10);
}
