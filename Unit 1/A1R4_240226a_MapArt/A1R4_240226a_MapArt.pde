void setup() {
  size(900, 900);
}

void draw() {
  fill(0);
  noStroke();
  rect(540, 4, 260, 910);
  fill(#A73F19);
  stroke(#5A5A5A);
  rect(1, -1, 390, 500, 11);
  fill(#FFFFFF);
  stroke(0);
  rect(197, 157, 703, 142);
  fill(#7E7D7D);
  rect(0, 0, 215, 496);
  fill(#121111);
  textSize(34);
  text("Cool College", 17, 120);
  fill(#3B3333);
  rect(900, 900, 479, 400);
  fill(#F1F531);
  stroke(5);
  stroke(#F1F531);
  rect(811, 661, 1, 163, 0, 0, -70, -70);
  textSize(23);
  text("HEAVEN (McDonalds)", 684, 642);
  noFill();
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(676, 648, 215, -34);
  fill(#050505);
  textSize(30);
  text("bridge to medic building --->", 396, 236);
  fill(#050505);
  textSize(30);
  text("slope/stairs", 229, 397);
  fill(#8E7268);
  rect(-3, 736, 252, 174);
  fill(#F2F6F9);
  text("ROAD!!", 628, 410);
  text("ROAD!!", 628, 596);
  text("ROAD!!", 628, 806);
  text("ROAD!!", 628, 100);
  fill(0);
  text("Building B", 44, 835);
  // Save an image of it
  if (frameCount == 1) {
  save("recipe4.png");
}
}
