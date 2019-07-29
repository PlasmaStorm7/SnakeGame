PImage image; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
PImage [] planetsss = new PImage[9];
import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;
Minim minim2;
AudioPlayer player;
AudioPlayer elevatormusic;
int i=0;
boolean introsong=true;
void setup()
{
  fullScreen();
  planeteleMirunei();
 spongebob();
  setRows(rows);
  setColumns(columns);
  setInitialSnakePieceNumber(snakePieces);
  setInitialSnakeHeadPosition(snakeHeadPositionX, snakeHeadPositionY);
  setSnakeDirection(direction);
  println(frameCount);
  initializeSong("Sandbox.mp3"); 
  elevatorSong();
  setInitialSnakePieceNumber(4);
}

void draw()
{
  //<>//
  if (intro)
  {
    sistemSolar();
  } else {
    if (introsong==true) 
    {
      player.close();
      initializeSong("Vanishing-Point.mp3");
      elevatorSong();
      introsong=false;
    }

    background(10);
    pictures();
    for ( i=0; i<columns; i++)
    {
      line(i*width/rows, 0, i*width/rows, height);
    }
    for ( i=0; i<rows; i++)
    {
      line(0, i*height/columns, width, i*height/columns);
    }
    if (gameStarted==false)
    {
      startGame();
    }
    for (int i=0; i < rows; i++)
    {
      for (int j=0; j < columns; j++)
      {
        int piece = getPiece(i, j);
        switch(piece) {
        case SNAKEPIECE:
          snake(i*width/rows, j*height/columns, width/rows*0.8, height/columns*0.8);
          break;
        case FOODPIECE:
          food(i*width/rows, j*height/columns, width/rows*0.8, height/columns*0.8);
          break;
        default:
          break;
        }
      }
    }

    //food();
    //snake();
    //head();
    if (frameCount%20==0)
      advanceGame();

    if (snakeDead==true)
    {
      background(0);
      image(img4,width/2,600);
      fill(90,247,220);
      textAlign(CENTER, CENTER);
      textSize(60);
      text(getScore(),width/2, height/2+60);
      text("You Died!! ", width/2, height/2);
    }
  }
}
