import ddf.minim.*;
Minim minim;
Audioplayer player;
void setup()
{
  fullScreen();
   background(10);
  setRows(rows);
  setColumns(columns);
  setInitialSnakePieceNumber(snakePieces);
  setInitialSnakeHeadPosition(snakeHeadPositionX,snakeHeadPositionY);
  println(frameCount);
}

void draw()
{
  if (frameCount<200)
  {
    fill(236,247,90);
    ellipse(random(0,width),random(0,height),random(9,12), random(9,12));
  }
}
