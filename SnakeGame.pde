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
  if (intro==1)
  {
  if (frameCount<200)
  {
    fill(236, 247, 90);
    ellipse(random(0, width), random(0, height), random(9, 12), random(9, 12));
  }
  }
  else
  {
    intro=0;
  }
  
}
