// Im going to make a spiderman collage for the first assignment for Unit 2
PImage ComicLogo;
PImage New;
PImage Cook;
PImage Title;
PImage SPNoir;
PImage NCity;

void setup(){
  size (700, 900);
  
  //Add photos to code
  ComicLogo = loadImage("ComicLogo.jpg");
  New = loadImage("NEWS.jpg");
  Cook = loadImage("SpiderSense.jpg");
  Title = loadImage("SpiderManNoirLogo.png");
  SPNoir = loadImage("noir.png");

}

void draw(){
  background(#171717);
  image(New, 350, 450);
  
  scale(0.7);
  image(SPNoir, 352, 560);
  resetMatrix();
  
  scale(0.67);
  image(Title, 186, -152);
  resetMatrix();
  
  scale(0.18);
  image(ComicLogo, 0, 0);
  resetMatrix();
}
