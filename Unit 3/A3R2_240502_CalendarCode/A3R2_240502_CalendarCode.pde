/*Im going to make a calendar as a flower so that the colors of the petals change per month. 
  Also the petals will grow in amount with each day(day 1, 1 petal. 31 days, 31 petals).*/

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
  circle(315, 300, 100);
  
  /*next I gotta add the petals and the effect that every day the flower petals get more 
  in amount */
  fill(0, day);
  ellipse(203, 256, 133, 40);
}
