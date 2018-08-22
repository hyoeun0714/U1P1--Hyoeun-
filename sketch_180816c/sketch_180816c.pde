//DATA_TYPE NAME;
import ddf.minim.*;

Minim minim;
AudioPlayer player; 

PImage MOOMIN;
float MOOMINX=600;
float MOOMINY=600; 

PImage MOOMIN2;
float MOOMIN2X=400;
float MOOMIN2Y=400;

PImage AAA3;
float AAA3X=400;
float AAA3Y=200; 
void setup()
{
  //loading soundfile 
  minim = new Minim(this);
  player = minim.loadFile("cat.mp3");

  size(800, 800);
  MOOMIN= loadImage("moomin.png");
  MOOMIN.resize(100, 100);

  MOOMIN2= loadImage("moomin2.png");
  MOOMIN2.resize(100, 100);

  AAA3= loadImage("AAA3.png");
  AAA3.resize(50, 50);
}

void draw()
{
  player.play();

  PImage GRASS;
  GRASS= loadImage("grass.jpeg");
  GRASS.resize(800, 800);
  background(GRASS); 

  ///PImage x y
  image(MOOMIN, MOOMINX, MOOMINY);
  MOOMINX= MOOMINX+5;

  if (MOOMINX > width)
  {
    MOOMINX = 0;
  } 
  //PImage x y 
  image(MOOMIN2, MOOMIN2X, MOOMIN2Y); 
  MOOMIN2X= MOOMIN2X-5;
  if (MOOMIN2X <0)
  {
    MOOMIN2X = 800;
  }
  //PImage x y 
  image(AAA3, AAA3X, AAA3Y);

  //move AAA3 using key 'w' to go up and 's' to go down
}

void keyPressed()
{
  if (key == 'w') 
  {
    AAA3Y=AAA3Y-5;
  } 
  if (key == 's') 
  {
    AAA3Y=AAA3Y+5;
  }
}
