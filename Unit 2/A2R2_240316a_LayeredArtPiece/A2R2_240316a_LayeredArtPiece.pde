PFont JOY;

float x1 = 0;
float y1 = 0;

float speedx = 5;
float speedy = 7;

// I will make a layered art piece
// I want to make a smiley face but colorful

void setup(){
// Make the canvas  
  size(900,900);
  noSmooth();
  background(#CBC9C9);
  JOY = loadFont("ComicSansMS-Bold-48.vlw");
}

void draw(){
  background(#CBC9C9);
// Add the square with no fill
  translate(230,230);
  noFill();
  strokeWeight(5);
  square(0, 0, 450);
  
// Add the code so that the squares can only appear inside the square
  noStroke();
  fill(random(225), random(225), random(225), random(225));
  square(random(440), random(440), random(50));
  fill(random(225), random(225), random(225), random(225));
  square(random(440), random(440), random(50));
  fill(random(225), random(225), random(225), random(225));
  square(random(440), random(440), random(50));
  fill(random(225), random(225), random(225), random(225));
  square(random(440), random(440), random(50));
  fill(random(225), random(225), random(225), random(225));
  square(random(440), random(440), random(50));
  fill(random(225), random(225), random(225), random(225));
  square(random(440), random(440), random(50));
  
// add the eyes and smile (aka the lines and arc)
  stroke(0);
  strokeWeight(20);
  line(140, 220, 140, 50);
  line(310, 220, 310, 50);
  noFill();
  arc(220, 340, 300, 150, 0, 3.10);

// add a text layer that makes a criss-cross pattern  
  resetMatrix();
  if(frameCount >= 1000){

  textFont(JOY, 100);
  fill(random(225), random(225), random(225), random(225));
  text("JOY", x1, y1);

  
  x1 += speedx;
  y1 += speedy;
  
  if(x1 > width || x1 < 0){
    speedx *= -1;
  }
  if(y1 > height || y1 < 0){
    speedy *= -1;
  }
  }
  
}
