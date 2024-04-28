PFont IMPACT;
PImage Goku;


/* 
  I want to make a clock that isn't a clock
*/
void setup(){
 size(850,850);
 noSmooth();
 IMPACT = loadFont("Impact-48.vlw");
 Goku = loadImage("gokuSB.png");

}

void draw(){
  noSmooth();
  background(#EAE49F);
// Make the time integers.
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  
// add the dials for the hours, minutes, and seconds.
  translate(width/2, height/2);
  noStroke();
  fill(#38DFF0);
  circle(0, -100, s + 447);
  fill(#4EB0EA);
  circle(0, -100, m + 240);
  fill(#FFFFFF);
  circle(0, -100, h + 150);
  resetMatrix();
  
// add goku cause he goku
  image(Goku, 0, 520);
  
// need to add particles
  
  
}
