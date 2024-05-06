/*Im going to make a calendar as a flower so that it will have one petal and then at 
  the final month it will be 12 petals. Also the petals will grow in size with each day
*/

int cols = 7; // Number of columns (days in a week)
int rows = 4; // Number of rows (maximum number of weeks in a month)
int grn = #4C8660;
int ylw = #67583B;
int m = month();
int day = day();

void setup() {
  size(600, 600);
  
}

void draw() {
  // Add the sky
  background(#AED7F0);
  
  // add the stem and leaves
  fill(grn);
  noStroke();
  rect(width/2, height/2, 32, 357);
  ellipse(354, 388, 108, 40);
  ellipse(278, 410, 86, 36);
  
  //add the flower core
  fill(ylw);
  circle(315, 242, 120);
  
  //next I gotta add the petals and the effect that they have
  fill(0, day);
  ellipse(203, 256, 133, 40);
}
