int rows = 10;
int columns = 10;
boolean gamePlaying = false;
boolean snakeDead = false;
boolean intro=1;

int snakeHeadPositionX = 5;
int snakeHeadPositionY = 5;
int direction = RIGHT;
int lastDirection;
int snakePieces = 3;
int[] snakePiecesX;
int[] snakePiecesY;
int[][] board;
final int NOPIECE = 0;
final int SNAKEPIECE = 1;
final int FOODPIECE = 2;

void setRows(int rowNumber)
{
  if (gamePlaying)
  {
    println("Cannot setup the game while it's playing!");
  }
  rows = rowNumber;
}

void setColumns(int columnNumber)
{
  if (gamePlaying)
  {
    println("Cannot setup the game while it's playing!");
  }
  columns = columnNumber;
}

void setInitialSnakePieceNumber(int number)
{
  if (gamePlaying)
  {
    println("Cannot setup the game while it's playing!");
  }
  snakePieces = number;
}

void setInitialSnakeHeadPosition(int x, int y)
{
  if (gamePlaying)
  {
    println("Cannot setup the game while it's playing!");
  }
  snakeHeadPositionX = x;
  snakeHeadPositionY = y;
}

void pause()
{
  gamePlaying = false;
}

void unpause()
{
  gamePlaying = true;
}

boolean gameFinished()
{
  return snakeDead;
}

int getScore()
{
  return snakePieces;
}

void startGame()
{
  gamePlaying = true;
  snakeDead = false;
  snakePiecesX = new int[snakePieces];
  snakePiecesY = new int[snakePieces];
  board = new int[columns][rows];

  for (int i=0; i<columns; i++)
  {
    for (int j=0; j<rows; j++)
    {
      board[i][j] = NOPIECE;
    }
  }

  int positionX = snakeHeadPositionX;
  int positionY = snakeHeadPositionY;
  for (int i = 0; i < snakePieces; i++)
  {
    if (outsideBoundaries(positionX, positionY))
    {
      println("Initial snake generation goes outside boundaries!");
    }
    snakePiecesX[i] = positionX;
    snakePiecesY[i] = positionY;
    board[positionX][positionY] = SNAKEPIECE;
    switch(direction)
    {
    case UP:
      positionY++;
      break;
    case DOWN:
      positionY--;
      break;
    case LEFT:
      positionX++;
      break;
    case RIGHT:
      positionX--;
      break;
    }
  }
  generateFoodPiece();
}

void generateFoodPiece()
{
  boolean found = false;
  while (!found)
  {
    //searches a random place for a food piece
    int x = floor(random(columns));
    int y = floor(random(rows));
    if (board[x][y] == NOPIECE)
    {
      board[x][y] = FOODPIECE;
      found = true;
    }
  }
}

void changeDirection(int snakeDirection)
{
  if (snakeDirection == UP || snakeDirection == DOWN || snakeDirection == LEFT || snakeDirection == RIGHT)
  {
    if (direction != invertDirection(snakeDirection))
    {
      direction = snakeDirection;
    }
  }
}

void setSnakeDirection(int snakeDirection)
{
  lastDirection = snakeDirection;
}

void advanceGame()
{
  if (!gamePlaying)
  {
    return;
  }
  changeDirection(lastDirection);
  lastDirection = -1;

  int positionX = snakePiecesX[0];
  int positionY = snakePiecesY[0];

  //calculating where the snake goes next
  switch(direction)
  {
  case UP:
    positionY--;
    break;
  case DOWN:
    positionY++;
    break;
  case LEFT:
    positionX--;
    break;
  case RIGHT:
    positionX++;
    break;
  }

  //collision detection with walls and snake pieces
  if (outsideBoundaries(positionX, positionY) || board[positionX][positionY] == SNAKEPIECE)
  {
    gamePlaying = false;
    snakeDead = true;
    return;
  }
  if (board[positionX][positionY] == FOODPIECE)
  {
    snakePieces++;
    snakePiecesX = expand(snakePiecesX, snakePieces);
    snakePiecesY = expand(snakePiecesY, snakePieces);
    generateFoodPiece();
  } else
  {
    //remove last snake piece
    board[ snakePiecesX[snakePieces - 1] ][ snakePiecesY[snakePieces - 1] ] = NOPIECE;
  }

  //if(board[positionX][positionY] == MY_POWER_UP)
  //{

  //}

  //advances snake
  for (int i = snakePieces - 1; i > 0; i--)
  {
    snakePiecesX[i] = snakePiecesX[i - 1];
    snakePiecesY[i] = snakePiecesY[i - 1];
  }
  snakePiecesX[0] = positionX;
  snakePiecesY[0] = positionY;
  board[positionX][positionY] = SNAKEPIECE;
}

boolean outsideBoundaries(int positionX, int positionY)
{
  return positionX < 0 || positionX >= columns || positionY < 0 || positionY >= rows;
}

int getPiece(int x, int y)
{
  if (outsideBoundaries(x, y))
  {
    println("Requested piece coordonates are outside the board boundaries!");
  }
  return board[x][y];
}

int invertDirection(int snakeDirection)
{
  switch(snakeDirection)
  {
  case LEFT:
    return RIGHT;
  case RIGHT:
    return LEFT;
  case UP:
    return DOWN;
  case DOWN:
    return UP;
  default:
    return 0;
  }
}
