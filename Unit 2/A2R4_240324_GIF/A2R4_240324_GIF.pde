PFont Segoe;

float x1 = 0;
float y1 = 0;
float y2 = 30;

float speedx = 4;
float speedy = 6;

// GIF is gonna be the dvd logo cause it is a great idea
void setup(){
  size(750,700);
  background(0);
  noStroke();
  Segoe = loadFont("SegoeUI-BoldItalic-48.vlw");
}

void draw(){
// First make the logo
  background(0);
  
  ellipse(x1, y1, 165, 118);
  
  textFont(Segoe, 45);
  textAlign(CENTER);
  text("N O", x1, y1);
  
  textFont(Segoe, 20);
  text("M A N C H E S", x1, y2);

// Then add the movement so that is moves in the canvas
  x1 += speedx;
  y1 += speedy;
  y2 += speedy;
  
  if(x1 > width || x1 < 0){
    speedx *= -1;
  }
  if(y1 > height || y1 < 0){
    speedy *= -1;
  }

// make it change color if it touches the sides/corners
  if(x1 > width || x1 < 0){
    fill(random(255 + 72), random(255 + 72), random(255 + 72));
  }
  if(y1 > height || y1 < 0){
    fill(random(255 + 72), random(255 + 72), random(255 + 72));
  }
}
