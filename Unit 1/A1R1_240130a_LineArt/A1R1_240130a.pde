// New York City I, 1942 by Piet Mondrian

// When I was making this piece it reminded me of two things that I learned in life
// How I learned how to stich and weave cloth threads
// and how New York would look like if you asked kid me.
// This art reminds me how art like this can represent a bigger picture. 
//https://www.piet-mondrian.org/new-york-city.jsp

// Make the canvas
void setup(){
  size(888,888);
}

// Make the background old paper white
// Add the lines and make the stroke just the right amount and in the right locations
void draw(){
  background(#ffffff);
  strokeWeight(20);
  stroke(#e1e33a);
  line(50, 0, 50, 959);
  line(0, 100, 500, 100);
  line(132, 0, 132, 900);
  line(350, 0, 350, 900);
  line(0, 700, 897, 700);
  line(100, 100, 100, 100);
  line(0, 750, 898, 750);
  line(580, 0, 580, 891);
  line(850, 0, 850, 899);
  line(0, 100, 902, 100);
  line(0, 850, 890, 850);
  line(0, 100, 902, 100);
  line(0, 429, 890, 429);
  line(0, 583, 902, 583);
  line(0, 850, 890, 850);
  line(0, 300, 890, 300);
  line(761, 0, 761, 890);
  line(724, 0, 724, 890);
  line(623, 0, 623, 890);
  stroke(#e52020);
  line(283, 0, 283, 890);
  line(888, 50, 0, 50);
  line(816, 0, 816, 890);
  line(888, 617, 0, 617);
  stroke(#1D3FA0);
  line(90, 0, 90, 888);
  line(0, 820, 890, 820);
  line(0, 150, 890, 150);
  line(0, 394, 890, 394);
// Save an image of it
  if (frameCount == 1) {
  save("recipe1.png");
  }
}
