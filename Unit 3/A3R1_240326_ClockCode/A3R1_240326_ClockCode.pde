PFont Goth;
/* 
  I want to make a clock that isn't a clock
*/
void setup(){
 size(850,850);
 noSmooth();
 Goth = loadFont("CenturyGothic-Bold-48.vlw");

}

void draw(){
  background(#EAE49F);
// Make the time integers.
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  
// add the dials for the hours, minutes, and seconds.
  translate(width/2, height/2);
  fill(#fe3b3f);
  circle(s, s, 30);
  fill(0);
  circle(m, m, 30);
  fill(#FFFFFF);
  circle(h, h, 30);
  
  
}
