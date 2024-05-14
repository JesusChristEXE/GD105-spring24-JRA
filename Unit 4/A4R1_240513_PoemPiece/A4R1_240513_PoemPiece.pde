// I made a poem about flowers and made it shaped like a flower
// i like flowers so i tried to make it like flowers
String[] poem = {
  "A single flower blooms",
  "In the quiet morning light",
  "Its petals soft as dreams",
  "Radiate a gentle might",
  "Colors bright and pure",
  "Nature's delicate art",
  "Each bloom a lovely cure",
  "For the ache within the heart",
  "With every petal's grace",
  "Whispers of spring's embrace",
  "A fragrant, fleeting trace",
  "In this tranquil place",
};

void setup() {
  size(800, 800);
  background(255);
  translate(width/2, height/2);
  float angle = TWO_PI / poem.length;
  float radius = 200;
  
  for (int i = 0; i < poem.length; i++) {
    pushMatrix();
    rotate(i * angle);
    drawPetal(poem[i], radius);
    popMatrix();
  }
}

void drawPetal(String text, float radius) {
  float petalWidth = radius / 3;
  float petalHeight = radius;
  fill(255, 192, 203); // Pink color for petals
  stroke(0);
  strokeWeight(1);
  
  // Draw petal shape
  beginShape();
  vertex(0, 0);
  bezierVertex(petalWidth, petalHeight/4, petalWidth, 3*petalHeight/4, 0, petalHeight);
  bezierVertex(-petalWidth, 3*petalHeight/4, -petalWidth, petalHeight/4, 0, 0);
  endShape(CLOSE);
  
  // Draw text along the petal
  pushMatrix();
  translate(0, petalHeight / 2);
  rotate(HALF_PI);
  textAlign(CENTER, CENTER);
  fill(0);
  text(text, 0, 0);
  popMatrix();
}
