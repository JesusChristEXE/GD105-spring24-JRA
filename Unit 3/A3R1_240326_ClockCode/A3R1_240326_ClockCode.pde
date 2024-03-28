
// I need to make clock but not a clock 

void setup(){
 size(750,750);
 
 
}

void draw(){
  background(204);
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  line(s, 0, s, 33);
  line(m, 33, m, 66);
  line(h, 66, h, 100);
  rect(100, 100, 100, 100);
}
