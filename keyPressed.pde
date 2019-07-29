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
}
