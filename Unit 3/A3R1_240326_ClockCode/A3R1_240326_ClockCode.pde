PFont IMPACT;
PImage Goku;

/*
 I want to make a clock that isn't a clock so is decided to make goku's spirit bomb
 I wan to make it so that each layer is corisponding to there time amount like one for
 seconds, minutes, and hours.
*/
void setup() {
  size(850, 850);
  noSmooth();
  IMPACT = loadFont("Impact-48.vlw");
  Goku = loadImage("gokuSB.png");
}

void draw() {
  noSmooth();
  noStroke();
  background(#EAE49F);
  fill(#4B9D63);
  ellipse(52, 855, 277, 343);
  ellipse(809, 809, 287, 506);
  resetMatrix();

  // Make the time integers.
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23

  // add the dials for the hours, minutes, and seconds.
  translate(width/2, height/2);
  noStroke();
  fill(#38DFF0, 207);
  circle(0, -100, s + 447);
  fill(#4EB0EA, 122);
  circle(0, -100, m + 300);
  fill(#FFFFFF, 114);
  circle(0, -100, h + 150);

  resetMatrix();

  // add goku cause he goku
  image(Goku, 0, 520);

  // need to add particles
}
