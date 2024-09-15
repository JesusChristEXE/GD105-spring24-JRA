// I am making a data thing for how much root beer i drink
// Because I love root beer and haven't done any code for root beer
// But im making it so that you see how much root beer i drink and how much water i drink too
// Ill make it look like ccup with circle that represent the diffrnece between the amount of
// root beer I drink and the amount of water i drink

class Drink {
  String type;
  color clr;
  
  Drink(String type, color clr) {
    this.type = type;
    this.clr = clr;
  }
}

Drink[] drinks;
int currentCircle = 0;
int frameCounter = 0;
int totalCircles = 100; // Total circles to be evenly distributed between water and root beer

void setup() {
  size(800, 600);
  drinks = new Drink[totalCircles];

  // Populate drinks array with equal amounts of water and root beer
  for (int i = 0; i < totalCircles / 2; i++) {
    drinks[i] = new Drink("Water", color(0, 0, 255)); // Blue for water
  }
  for (int i = totalCircles / 2; i < totalCircles; i++) {
    drinks[i] = new Drink("Root Beer", color(165, 42, 42)); // Brown for root beer
  }

  // Manually shuffle the drinks array
  for (int i = drinks.length - 1; i > 0; i--) {
    int index = int(random(i + 1));
    Drink temp = drinks[i];
    drinks[i] = drinks[index];
    drinks[index] = temp;
  }
}

void draw() {
  background(255);
  int cupWidth = 200;
  int cupHeight = 400;
  int margin = 100;
  int circleSize = 20;

  // Draw the cup
  fill(200);
  rect(width / 2 - cupWidth / 2, height - margin - cupHeight, cupWidth, cupHeight);

  // Draw the drinks as circles inside the cup
  float currentHeight = height - margin - circleSize / 2;
  int circlesDrawn = 0;

  for (int i = 0; i < currentCircle; i++) {
    fill(drinks[i].clr);
    float xPos = random(width / 2 - cupWidth / 2 + circleSize / 2, width / 2 + cupWidth / 2 - circleSize / 2);
    ellipse(xPos, currentHeight, circleSize, circleSize);
    currentHeight -= circleSize;

    if (currentHeight - circleSize / 2 < height - margin - cupHeight) {
      currentHeight = height - margin - circleSize / 2; // Reset height if we reach the top
    }
  frameRate(10);
  }

  // Add labels
  fill(0);
  textSize(16);
  textAlign(LEFT);
  text("Blue circles: Water", 20, 20);
  text("Brown circles: Root Beer", 20, 40);

  // Increment the current circle counter at a slower pace
  if (frameCounter % 20 == 0 && currentCircle < totalCircles) {
    currentCircle++;
  }
  frameCounter++;
}
