PFont IMPACT;
PImage Goku;
ParticleSystem ps;

/* 
  I want to make a clock that isn't a clock
*/
void setup(){
 size(850,850);
 noSmooth();
 IMPACT = loadFont("Impact-48.vlw");
 ps = new ParticleSystem(new PVector(width/2, 50));

}

void draw(){
  background(#EAE49F);
// Make the time integers.
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  
// add the dials for the hours, minutes, and seconds.
  translate(width/2, height/2);
  fill(#38DFF0);
  circle(0, 0, s + 100);
  fill(#4EB0EA);
  circle(0, 0, m + 55);
  fill(#FFFFFF);
  circle(0, 0, h + 50);
  resetMatrix();
  
  ps.addParticle();
  ps.run();
  
}
