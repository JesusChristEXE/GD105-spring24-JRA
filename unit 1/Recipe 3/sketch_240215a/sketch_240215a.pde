void setup(){
  size(900, 900);
}
void draw() {
  background(#030303);
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
  noFill();
  ellipse(169, 712, 220, 220);
  fill(#FC3636);
  ellipse(700, 700, 220, 220);
  arc(140, 680, 100, 100, 0, PI+QUARTER_PI, CHORD);
  noFill();
  stroke(0);
  arc(779, 699, 222, 167, HALF_PI, PI);
  fill(0);
  ellipse(739, 665, 62, 37);
}
