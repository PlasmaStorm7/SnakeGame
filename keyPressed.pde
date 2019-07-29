void KeyPressed()
{
  if (key=='p' || key=='P')
  {
    if (gamePlaying == false)
    {
      unpause();
    } else {
      pause();
    }
  }
  if(keyCode==UP ||keyCode==DOWN ||keyCode==LEFT ||keyCode==RIGHT )
  {
    changeDirection(keyCode);
  }
  if (key=='m'||key=='M')
  {
    asist=1;
    intro=true;
  }
}
