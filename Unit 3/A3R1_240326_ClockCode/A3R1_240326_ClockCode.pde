/* I need to make clock but recommends some stuff to do at some certain times
  I will also make it so that it looks like a screen reminder
*/
void setup(){
 size(750,750);
 noSmooth();
 loadFont("CenturyGothic-Bold-48.vlw");
}

void draw(){
// add the text and make it fro diffrent times
  String word1 = "Wakey Wakey.             Its time for breakfast!";
  String word2 = "Time for bed";
  
// Make the time integers.
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23

// add the screen thing  
  background(204);
  noStroke();
  fill(#7E7E7E);
  rect(0, 312, 751, 442);
  resetMatrix();
  /* I want to make it when it hits a certain time, 
  it says lunch time, dinner time and other things
  */
  
// Add the screens for the text, time hands, and thing to do  
// Put the screen boxes before the text so that its infront of it
  strokeWeight(5);
  fill(-1);
  rect(10, 357, 263, 74);
  
//put the time
  fill(0);
  textSize(54);
  text(h, 30, 406);
  text(m, 97, 406);
  text(s, 165, 406);
  
// add the dials for the hours, minutes, and seconds.
  strokeWeight(5);
  fill(#fe3b3f);
  circle(s + 500, 421, 30);
  fill(0);
  circle(m + 500, 464, 30);
  fill(#FFFFFF);
  circle(h + 500, 510, 30);
  
// I must add so that the text is 
  
}
