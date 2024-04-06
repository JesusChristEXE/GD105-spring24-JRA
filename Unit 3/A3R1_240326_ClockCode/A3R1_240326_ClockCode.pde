/* 
  I want to make a clock that isn't a clock
*/
void setup(){
 size(750,750);
 noSmooth();
 loadFont("CenturyGothic-Bold-48.vlw");
}

void draw(){
  background(#EAE49F);
// Make the time integers.
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  
// add the dials for the hours, minutes, and seconds.
  fill(#fe3b3f);
  circle(s + 500, 421, 30);
  fill(0);
  circle(m + 500, 464, 30);
  fill(#FFFFFF);
  circle(h + 500, 510, 30);
  circle(CENTER, BOTTOM, CENTER);
// I must add so that the text is 
  
  
}
