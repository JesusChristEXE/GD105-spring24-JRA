PImage Dawg;
PImage Sparkle;
PImage BaBa;
PFont Gothic;
// Im gonna make a mouse in the program that lets you pet a dog
// but when you try to pet it, it will explode instead
void setup(){
  size(700,700);
  
  background(#CEB368);
  
  BaBa = loadImage("baba.png");
  Dawg = loadImage("cuteDog.png");
  Sparkle = loadImage("sparkle.png");
  
  Gothic = loadFont("CenturyGothic-Bold-48.vlw");
}

void draw(){
// First addd the dog and background so no lag trails appears
  background(#CEB368);
  scale(0.5);
  image(Sparkle, 0, 0);
  
  scale(1.60);
  image(Dawg, 200, 266);
  
// now to make the hand cursor follow the mouse location
  fill(0);
  circle(mouseX, mouseY, 50);
  
// add text to tell what to do (adds more info and what to do if someone uses this code
  textFont(Gothic, 60);
  text("Circle is mouse", 219, 66);
  text("TASK : Pet the dog", 171, 149);
  textFont(Gothic, 40);
  text("CLICK TO PET", 307, 206);

// this portion will make it so tht if i click the mouse it will change the whole program image
  if (mousePressed == true) {
    background(0);
    scale(1.50);
    image(BaBa, 157, 176);
    
    noStroke();
    fill(random(255), random(255), random(255), random(255));
    circle(random(700), random(700), random(700));
    
    textFont(Gothic, 60);
    fill(#FFFFFF);
    text("GET", 226, 154);
    text("BABA'D", 169, 460);
  } 
  
}
