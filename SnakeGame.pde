import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer player;

void setup()
{
  fullScreen();
  background(10);
  setRows(rows);
  setColumns(columns);
  setInitialSnakePieceNumber(snakePieces);
  setInitialSnakeHeadPosition(snakeHeadPositionX, snakeHeadPositionY);
  println(frameCount);
  //playMusic();
}

void draw()
{
  if (intro==true)
  {
    if (frameCount<200)
    {
      fill(236, 247, 90);
      ellipse(random(0, width), random(0, height), random(9, 12), random(9, 12));
    }
  else
    {
      intro=false;
      background(10);
   drawSnakeHead(snakeHeadPositionX,snakeHeadPositionY, headSize,eyeSize);
    }
  }
  for (int i=0; i<columns; i++)
  {
    for (int j=0; j<rows; j++)
    {
      
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
