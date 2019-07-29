import ddf.minim.*; //<>//
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer player;
int i=0;
void setup()
{
  //fullScreen();
  size(400, 400);
  background(10);
  setRows(rows);
  setColumns(columns);
  setInitialSnakePieceNumber(snakePieces);
  setInitialSnakeHeadPosition(snakeHeadPositionX, snakeHeadPositionY);
  println(frameCount);
  //playMusic();
  setInitialSnakePieceNumber(4);

  background(0);
  ellipseMode(CENTER); 
  pb = createGraphics(3200, 1600);
  Earthr=width/6;
  Venusr=width/8;
  Jupiterr=width/3;
  Saturnr=width/2.5;
  Uranusr=width/2.2;
  Neptunr=width/2;
  Marsr=width/5;
  Mercuryr=width/12;
  Moonr=25;
  pa = createGraphics(3200, 1600);
  backgroundr=200;
  backgroundg=200;
  backgroundb=0;
}

void draw()
{
  
  if (intro)
    {
      sistemSolar(); //<>//
    }
  else{
    
    background(10);
    for ( i=0; i<columns; i++)
    {
      line(i*width/10, 0, i*width/10, height);
    }
    for ( i=0; i<rows; i++)
    {
      line(0, i*height/10, width, i*height/10);
    }
    
    
  }
}





void drawSnakeHead(float Headx, float Heady, float sizeHead, float sizeEye )
{
  fill(60, 0, 60);
  ellipse(Headx, Heady, sizeHead, sizeHead);
  fill(0);
  ellipse(Headx-sizeEye, Heady-sizeEye, sizeEye, sizeEye);
  ellipse(Headx+sizeEye, Heady-sizeEye, sizeEye, sizeEye);
  fill(255);
  ellipse(Headx-sizeEye+5, Heady-sizeEye-5, sizeEye/4, sizeEye/4);  //the little white dots in the eyes
  ellipse(Headx+sizeEye+5, Heady-sizeEye-5, sizeEye/4, sizeEye/4);  //the little white dots in the eyes
  fill(0);
  line(Headx-sizeHead/2-10, Heady-10, Headx-10, Heady-sizeHead/2-10);
  pushMatrix();
  rotate(45);
  fill(100, 0, 0);
  rect(Headx-sizeHead/2-10, Heady-sizeHead/2-10, sizeHead/2, sizeHead/2);
  popMatrix();
}
