// Im going to make a spiderman collage for the first assignment for Unit 2
PImage ComicLogo;
PImage City;
PImage Cook;
PImage Title;
PImage SPNoir;

void setup(){
  size (1000, 900);
  
  //Add photos to code
  ComicLogo = loadImage("ComicLogo.jpg");
  City = loadImage("niorCity.jpg");
  Cook = loadImage("SpiderSense.jpg");
  Title = loadImage("SpiderManNoirLogo.png");
  SPNoir = loadImage("noir.png");

}

void draw(){
  background(#171717);
  scale(0.8);
  image(SPNoir, 556, 400);
  resetMatrix();
  
  S
  image(Title, 174, -130);
  
  scale(0.3);
  image(ComicLogo, 0, 0);
  resetMatrix();
  
}
