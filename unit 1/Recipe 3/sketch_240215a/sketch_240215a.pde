void setup() {
  size(900, 900);
  background(#030303);
}
void draw() {
  fill(#FC3636);
  textAlign(CENTER, TOP);
  textSize(128);
  text("SOLITUDE", 450, 107); 
  textAlign(CENTER, CENTER);
  text("IS", 450, 260);
  textAlign(CENTER, BOTTOM);
  text("ENRICHING", 450, 450);
  strokeWeight(5);
  stroke(#FC3636);
  line(300, 200, 300, 300); 
  line(450, 420, 450, 700);
  line(310, 420, 310, 600);
  line(700, 198, 700, 250);
  line(630, 380, 630, 550);
  fill(#FFFFFF);
  rect(900, 600, 900, 500);
  noFill();
  ellipse(169, 712, 220, 220);
}
