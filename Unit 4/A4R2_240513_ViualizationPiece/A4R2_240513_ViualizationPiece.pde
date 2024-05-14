// I am making a data thing for how much root beer i drink
// Because I love root beer and haven't done any code for root beer

RootBeerData[] data;

void setup() {
  size(800, 600);
  data = new RootBeerData[7];
  
  // Sample data for 7 days
  data[0] = new RootBeerData("Monday", 1.5);
  data[1] = new RootBeerData("Tuesday", 2.0);
  data[2] = new RootBeerData("Wednesday", 1.0);
  data[3] = new RootBeerData("Thursday", 2.5);
  data[4] = new RootBeerData("Friday", 3.0);
  data[5] = new RootBeerData("Saturday", 2.0);
  data[6] = new RootBeerData("Sunday", 1.8);

  // Draw the bar chart
  drawBarChart();
}

void drawBarChart() {
  background(255);
  int margin = 50;
  int chartWidth = width - 2 * margin;
  int chartHeight = height - 2 * margin;
  float maxAmount = getMaxAmount();
  
  // Draw axes
  stroke(0);
  line(margin, height - margin, width - margin, height - margin);
  line(margin, margin, margin, height - margin);

  // Draw bars
  int barWidth = chartWidth / data.length;
  for (int i = 0; i < data.length; i++) {
    float barHeight = map(data[i].amount, 0, maxAmount, 0, chartHeight);
    fill(100, 150, 250);
    rect(margin + i * barWidth, height - margin - barHeight, barWidth - 10, barHeight);
    
    // Draw labels
    fill(0);
    textAlign(CENTER);
    text(data[i].day, margin + i * barWidth + (barWidth / 2), height - margin + 20);
  }
}

float getMaxAmount() {
  float max = data[0].amount;
  for (int i = 1; i < data.length; i++) {
    if (data[i].amount > max) {
      max = data[i].amount;
    }
  }
  return max;
}
