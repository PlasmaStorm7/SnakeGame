PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;

void spongebob()
{
  img1=loadImage("SpongeBob.png");
  img3=loadImage("patrick.png");
  img4=loadImage("krabs.png");
  img5=loadImage("plankton.png");
  img2=loadImage("squidward.png");
  img6=loadImage("gary.png");
  img7=loadImage("puff.png");
}

void pictures()
{
  image(img1, width-200, 300);
  image(img2, width/2, 300, 300, 270);
  image(img3, width-400, 500);
  image(img5, width/2-80, 500);
  image(img6, 200, 250, 300, 300);
  image(img7, 240, 540, 289, 289);
}
