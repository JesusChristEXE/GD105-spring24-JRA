// these varibles make things more simple just add name and amount.
// Its type, then name, and then value
float size = 80;
float x1 = 100;
float y1 = 200;
// changes speed
float speedx = 5;
float speedy = 7;
color o = color(300, 60, 100);

void setup(){
  size(800, 800);
}

void draw(){
  background(0);
  fill(o);
  circle(x1, y1, size);
// you can move it like this.
  
  x1 += speedx;
  y1 += speedy;
  
  
  if(x1 > width || x1 < 0){
    speedx *= -1;
  }
  if(y1 > height || y1 < 0){
    speedy *= -1;
  }
}
