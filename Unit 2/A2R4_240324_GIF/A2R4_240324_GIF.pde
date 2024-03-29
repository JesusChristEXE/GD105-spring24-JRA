PFont Segoe;
float x1 = 0;
float y1 = 0;
float y2 = 30;
float speedx = 5;
float speedy = 7;

// GIF is gonna be a spanish dvd logo cause it is a great idea
void setup(){
  size(750,700);
  frameRate(50);
  background(0);
  noStroke();
  Segoe = loadFont("SegoeUI-BoldItalic-48.vlw");
}

void draw(){
// First make the logo
  background(0);
  noFill();
  strokeWeight(5);
  stroke(random(255), random(72), random(72));
  ellipse(x1, y1, 167, 118);
  
  textFont(Segoe, 45);
  textAlign(CENTER);
  text("N O", x1, y1);
  
  textFont(Segoe, 20);
  text("M A N C H E S", x1, y2);

// Then add the movement so that is moves in the canvas
  x1 += speedx;
  y1 += speedy;
  y2 += speedy;

  if(x1 > width || x1 < 2){
    speedx *= -1;
  }
  if(y1 > height || y1 < 2){
    speedy *= -1;
  }
  if(y2 > height || y2 < 2){
    speedy *= -1;
  }

// make it look like a neon circle
  if(x1 > width || x1 < 0){
    stroke(random(255), random(72), random(72));
  }
  if(y1 > height || y1 < 0){
    stroke(random(255), random(72), random(72));
  }

// Save the frames and make GIF
    saveFrame("frames/####.png");
}
