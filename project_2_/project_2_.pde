PImage ANGER; 
PImage FIRE; 
float Xs[]= new float[50]; 
float Ys[]= new float[50]; 
void setup()
{
  size(800,800);
  ANGER= loadImage("ANGER.jpg");
  ANGER.resize(800,800);
  FIRE= loadImage("fireball.png");
  FIRE.resize(50,50); 
 //placing fireball in his mouth  
  for(int i=0; i<50; i++)
  {
    Xs[i]= random(0,400);
    Ys[i]= random(0,400);
  }
}



void draw()
{
  
  background(ANGER);
  
//fireball coming out from his mouth 
 
  for(int i=0; i<50; i++)
  {
    image(FIRE, Xs[i], Ys[i]); 
  
    Xs[i]= Xs[i]-5; 
    Ys[i]= Ys[i]-5;
    if (Xs[i]<0) 
    {
      Xs[i] = 500; 
    }
    if (Ys[i]<0)
    {
      Ys[i] = 500; 
    } 
  } 
  
}
