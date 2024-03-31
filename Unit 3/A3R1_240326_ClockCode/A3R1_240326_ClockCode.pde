// I need to make clock but recommends some stuff to do at some certain times

void setup(){
 size(750,750);
 noSmooth();
 loadFont("CenturyGothic-Bold-48.vlw");
}

void draw(){
// make the lines that represent the clock hands
  String word1 = "Wakey Wakey.             Its time for breakfast!";
  String word2 = "Time for bed";
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  background(204);
  strokeWeight(5);
  fill(#fe3b3f);
  circle(s + 373, 143, 30);
  fill(0);
  circle(m + 399, 185, 30);
  fill(#FFFFFF);
  circle(h + 367, 207, 30);
  
  noStroke();
  fill(#7E7E7E);
  rect(0, 312, 751, 442);
  /* I want to make it when it hits a certain time, 
  it says lunch time, dinner time and other things
  */
  fill(0);
  textSize(54);
  text(word1, 46, 471, 280, 320);  // Text wraps within text box
  text(h, 30, 406);
  text(m, 97, 406);
  text(s, 162, 406);
  
}
