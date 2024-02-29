PFont Consolas;

// This is the album MADVILLAN by MF DOOM a popular rapper
// I will try to make it close to the original album cover
void setup(){
  size(900,900);
  background(#C1BFBF);
  Consolas = loadFont("Consolas-40.vlw");
}

void draw(){
// first add text
  fill(#FFFFFF);
  textSize(48);
  textFont(Consolas);
  text("M A D V I L L A I N", 30, 107);
  textSize(20);
  text("D O O M       A N D       M A D L I B", 30, 60);
// then add the redcorner square
  fill(#db641c);
  square(739, 0, 162);
}
