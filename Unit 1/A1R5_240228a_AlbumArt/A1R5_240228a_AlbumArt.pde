PFont Consolas;

// For my last assignment for this Unit im making a rap album cover.
// This is the album MADVILLAN by MF DOOM a popular rapper.
// I will try to make it close to the original album cover.
void setup(){
  size(900,900);
  background(#C1BFBF);
  Consolas = loadFont("Consolas-40.vlw");
}

void draw(){
// first add text.
  fill(#FFFFFF);
  textSize(48);
  textFont(Consolas);
  text("M A D V I L L A I N", 30, 107);
  textSize(20);
  text("D O O M       A N D       M A D L I B", 30, 60);
// then add the redcorner square.
  fill(#db641c);
  noStroke();
  rect(869, 0, 236, 332);
// Here comes the hard part, the mask/head of MF DOOM cause its mostly in grayscale so it'll be hard to do.
  fill(0);
  triangle(450, 750, 0, 907, 930, 922);
  rectMode(CENTER);
  rect(450, 750, 360, 200);
  ellipse(450, 484, 477, 548);
// Now imma make the mask seperatly cause I thought it might work
  fill(#B9B9B9);
  stroke(92);
  strokeWeight(6);       
  quad(240, 500, 380, 501, 357, 740, 306, 767);
  quad(519, 500, 637, 501, 592, 767, 532, 740);
  arc(448, 637, 512, 907, TAU * 1.525, TAU * 1.976);
  arc(452, 489, 544, 611, TAU * 0.456, TAU * 0.934);
  arc(452, 489, 544, 611, TAU * 0.564, TAU * 1.046);
  quad(449, 363, 411, 600, 449, 630, 486, 600);
  quad(638, 282, 692, 358, 460, 400, 452, 350);
  quad(277, 278, 212, 348, 438, 397, 445, 350);
  line(192, 573, 260, 585);
  line(184, 491, 378, 552);
  line(379, 554, 370, 616);
  line(719, 494, 516, 552);
  line(715, 569, 623, 592);
  line(514, 552, 525, 618);
  line(447, 634, 373, 615);
  line(448, 634, 524, 615);
  // eye 1
  fill(0);
  arc(317, 408, 152, 172, TAU * 1.044, TAU * 1.546);
  // eye 2
  arc(588, 413, 152, 172, TAU * 0.967, TAU * 1.466);
  // Save an image of it
  if (frameCount == 1) {
  save("recipe5.png");
}
}
