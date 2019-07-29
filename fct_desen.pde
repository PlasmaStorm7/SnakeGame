void head (float Headx, float Heady, float sizeHead, float sizeEye )
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

void food(float x, float y, float foodwidth, float foodheight)
{
  imageMode(CENTER);
  image(image, x, y, foodwidth, foodheight);
}

void snake(float x, float y, float snakewidth, float snakeheight)
{
  
  imageMode(CENTER);
  image(planetsss[index2], x, y, snakewidth, snakeheight);
  
}
