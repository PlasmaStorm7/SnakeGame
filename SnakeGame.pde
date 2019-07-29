PImage image; //<>//
PImage [] planetsss = new PImage[9];


import ddf.minim.*; //<>// //<>//
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
  planetsss[2]=loadImage("terra.jpg");
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
    sistemSolar(); //<>//
  } else {

    background(10);
    for ( i=0; i<columns; i++)
    {
      line(i*width/10, 0, i*width/10, height);
    }
    for ( i=0; i<rows; i++)
    {
      line(0, i*height/10, width, i*height/10);
    }
    if (gameStarted==false)
    {
      startGame();
    }

    //food();
    //snake();
    //head();
    advanceGame();

  }
}
