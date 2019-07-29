PImage image; //<>// //<>// //<>// //<>// //<>// //<>//
PImage [] planetsss = new PImage[9];


import ddf.minim.*; //<>//
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer player;
int i=0;
void setup()
{
  fullScreen();
  background(10);
  image=loadImage("Asteroid.png");
  planetsss[0]=loadImage("jupiter.png");
  planetsss[1]=loadImage("mars.png");
  planetsss[2]=loadImage("Earth.png");
  planetsss[3]=loadImage("pluto.png");
  planetsss[4]=loadImage("saturn.png");
  planetsss[5]=loadImage("uranus.png");
  planetsss[6]=loadImage("neptun.png");
  planetsss[7]=loadImage("venus.png");
  planetsss[8]=loadImage("mercury.png");

  setRows(rows);
  setColumns(columns);
  setInitialSnakePieceNumber(snakePieces);
  setInitialSnakeHeadPosition(snakeHeadPositionX, snakeHeadPositionY);
  setSnakeDirection(direction);
  println(frameCount);
  //playMusic();
  setInitialSnakePieceNumber(4);


  planeteleMirunei();
}

void draw()
{

  if (intro)
  {
    sistemSolar();
  } else {

    background(10);
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
        default:
          break;
        }
      }
    }

    //food();
    //snake();
    //head();
    if(frameCount%40==0)
    advanceGame();
  }
}
