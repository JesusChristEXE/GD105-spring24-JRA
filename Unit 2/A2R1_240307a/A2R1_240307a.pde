// Im going to make a spiderman collage for the first assignment for Unit 2
PImage ComicLogo;
PImage City;
PImage Cook;
PImage Title;
PImage SPNoir;

void setup(){
  size (1000, 1000);
  
  //Add photos to code
  ComicLogo = loadImage("ComicLogo.jpg");
  City = loadImage("niorCity.jpg");
  Cook = loadImage("SpiderSense.jpg");
  Title = loadImage("SpiderManNoirLogo.png");
  SPNoir = loadImage("noir.png");

}

void draw(){
  background(#303030);
  
  image(SPNoir, 100, 100);
  
  image(Title, 174, -121);
  
  scale(0.3);
  image(ComicLogo, 0, 0);
  resetMatrix();
  
}
