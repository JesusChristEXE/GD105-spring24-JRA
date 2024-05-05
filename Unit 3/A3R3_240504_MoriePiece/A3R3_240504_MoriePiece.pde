void setup() {
  size(400, 400);
  smooth();
  noFill();
}

void draw() {
  background(255);
  float maxRadius = 100;
  float numCircles = 100;
  
  for (int i = 0; i < numCircles; i++) {
    float radius = map(sin(frameCount * 0.01 + TWO_PI / numCircles * i), -1, 1, 10, maxRadius);
    float x = width / 2 + cos(TWO_PI / numCircles * i) * 50;
    float y = height / 2 + sin(TWO_PI / numCircles * i) * 50;
    ellipse(x, y, radius * 2, radius * 2);
  }
}
