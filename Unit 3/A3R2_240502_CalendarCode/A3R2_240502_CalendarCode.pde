/*
  I am going to make a calander so that each month is a diffrent color 
  and the days are the amounnt of leaves.
*/

int[] daysInMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
color[] monthColors = {
  color(255, 0, 0), // January - Red
  color(255, 165, 0), // February - Orange
  color(255, 255, 0), // March - Yellow
  color(0, 128, 0), // April - Green
  color(0, 255, 0), // May - Lime
  color(0, 255, 255), // June - Cyan
  color(0, 0, 255), // July - Blue
  color(75, 0, 130), // August - Indigo
  color(238, 130, 238), // September - Violet
  color(255, 192, 203), // October - Pink
  color(128, 0, 0), // November - Maroon
  color(139, 69, 19) // December - Brown
};

void setup() {
  size(800, 800);
  background(200, 225, 255);
  drawTree();
}

void drawTree() {
  int month = month() - 1;
  int days = daysInMonth[month];
  color leafColor = monthColors[month];

  drawTrunk();
  drawLeaves(days, leafColor);
}

void drawTrunk() {
  fill(139, 69, 19);
  rect(width / 2 - 25, height / 2 + 50, 50, 300);
}

void drawLeaves(int days, color leafColor) {
  noStroke();
  fill(leafColor);

  for (int i = 0; i < days; i++) {
    float x = random(width / 4, width * 3 / 4);
    float y = random(height / 8, height / 2);
    float leafSize = random(20, 50);
    ellipse(x, y, leafSize, leafSize);
  }
}

void draw() {
  // No continuous drawing needed
}
