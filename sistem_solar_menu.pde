
void  planeteleMirunei()
{
  background(0);
  ellipseMode(CENTER); 
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
  pb = createGraphics(3200, 1600);
  Earthr=width/6;
  Venusr=width/8;
  Jupiterr=width/3;
  Saturnr=width/2.5;
  Uranusr=width/2.2;
  Neptunr=width/2;
  Marsr=width/5;
  Mercuryr=width/12;
  Moonr=25;
  pa = createGraphics(3200, 1600);
  backgroundr=200;
  backgroundg=200;
  backgroundb=0;
}
void sistemSolar()
{


  if (asist==0)
  { 
    background(0);
    fill(200, 200, 0);
    textSize(30);
    text("Press the sun to start", width/2-100, height/9);
    fill(200, 200, 0);     
    ellipse(width/2, height/2, SunD, SunD);
    pb.beginDraw();              
    pb.fill(200, 200, 0);
    pb.stroke(200, 200, 0);
    pb.ellipse(random(3200), random(1600), sternerand, sternerand);  //sterneee 
    if (sternect<200)
    {

      sternerand=random(5);
    }
    sternect++;
    pb.endDraw();
    image(pb, 0, 0); 


    fill(6, 67, 128);
    planet( Neptunr, 35, 8); //Neptun
    fill(0, 213, 220);
    planet(Uranusr, 35, 7);  //Uranus
    fill(243, 219, 139);
    planet(Saturnr, 50, 6); //Saturn
    fill(144, 82, 1);
    planet(Mercuryr, 20, 0); //Mercury
    fill(2, 118, 174);
    planet(Earthr, 35, 2); //Earth
    fill(195, 115, 11);
    planet(Venusr, 30, 1); //Venus
    fill(162, 0, 0);
    planet(Marsr, 35, 3); //Mars
    fill(255, 150, 0);
    planet(Jupiterr, 60, 5); //Jupiter

    an[2]-=v[2];
    Earthx=width/2+cos(an[2])*Earthr;
    Earthy=height/2+sin(an[2])*Earthr;
    Moonx=Earthx+cos(an[9])*Moonr;
    Moony=Earthy+sin(an[9])*Moonr;
    fill(146);
    ellipse(Moonx, Moony, 10, 10);
    an[9]+=v[9];
    an[2]+=v[2];
  }
  if (asist==1)
  {
    background(0);
    //pa.beginDraw();  
    //pa.stroke(175, random(255), 0);
    //pa.line(width/2, height/2, random(3200), random(1600));
    //pa.endDraw();
    image(pa, 0, 0);        
    if (SunD<2400)
    {
      fill(200, 200, 0);
      ellipse(width/2, height/2, SunD, SunD);
    }
    SunD+=30;
    if (SunD>=2400)
    {
      background(255);
      asist=2;
    }
  }
  if (asist==2)
  {
    textAlign(LEFT, TOP);
    background(200, 200, 0);
    fill(255);
    rect(width/9, 2*height/13, width/10, height/15);
    fill(60, 0, 60);
    textSize(30);
    text("Start", width/8, 2*height/13);
    fill(255);
    rect(width/9, 4*height/13, width/10, height/15);
    fill(60, 0, 60);
    textSize(30);
    text("Quit", width/8, 4*height/13);
    fill(255);
    rect(width/9, 6*height/13, width/10, height/15);
    fill(60, 0, 60);
    textSize(30);
    text("Credits", width/8, 6*height/13);
    fill(255);
    rect(width/9, 8*height/13, width/10, height/15);
    fill(60, 0, 60);
    textSize(30);
    text("Rules&Story", width/8, 8*height/13);
    fill(255);
    rect(width/9, 10*height/13, width/10, height/15);
    textSize(30);
    fill(60, 0, 60);
    text("Gamemode", width/8, 10*height/13);
    fill(255);
  }
  if (asist==3)
  {
    background(200, 200, 0);
    textSize(40);
    text("This game is made by:Stoica Diandra, Razvan Udrea and Candea Miruna", width/5, height/2);
    textSize(20);
    text("To go back press b", width/1.7, height/1.3);
    if (keyPressed==true) {
      if (key == 'b') {
        asist=2;
      }
    }
  }
  if(asist==4)
  {
    background(200, 200, 0);
    textSize(20);
    text("Rules: You have to eat as many asteroids as you can...but take care, the walls and your own body kill you.", width/5, height/2);
    text("For each asteroid you eat, you get bigger. Get as big as you can.", width/5, height/2.2);
    text("you move with UP, DOWN, LEFT and RIGHT", width/5, height/2.4);
    text("Press p for a break while playing", width/5, height/2.6);
    text("To go back press b", width/1.7, height/1.3);
    if (keyPressed==true) {
      if (key == 'b') {
        asist=2;
      }
    }
  
  }
}


void planet(float planetr, float size, int planetIndex)
{

  float planetx=width/2+cos(an[planetIndex])*planetr;
  float planety=height/2+sin(an[planetIndex])*planetr;
  ellipse(planetx, planety, size, size);
  an[planetIndex]=an[planetIndex]+v[planetIndex];
}

void mousePressed()
{
  if (mouseInCircle(width/2, height/2, 100))
  {
    asist=1;
  }

  if (mouseInStart(width/9, 2*height/13, width/10, height/15))
  {
    intro=false;
  }
  if (mouseInQuit(width/9, 4*height/13, width/10, height/15))
  {
    exit();
  }
  if (mouseInCredits(width/9, 6*height/13, width/10, height/15))
  {
    asist=3;
  }
  if (mouseInStory(width/9, 8*height/13, width/10, height/15))
  {
    asist=4;
  }
  if (mouseInGameMode(width/9, 10*height/13, width/10, height/15))
  {
    asist=5;
  }
}

void planetee()
{
  background(0);
  ellipseMode(CENTER); 
  pb = createGraphics(3200, 1600);

  Earthr=width/6;
  Venusr=width/8;
  Jupiterr=width/3;
  Saturnr=width/2.5;
  Uranusr=width/2.2;
  Neptunr=width/2;
  Marsr=width/5;
  Mercuryr=width/12;
  Moonr=25;
  pa = createGraphics(3200, 1600);
  backgroundr=200;
  backgroundg=200;
  backgroundb=0;
}

boolean mouseInCircle(float x, float y, float size)
{
  return dist(x, y, mouseX, mouseY) < (size / 2);
}


boolean mouseInCredits(float x, float y, float rectWidth, float rectHeight)
{
  return mouseX > x && mouseX < (x + rectWidth) && mouseY > y && mouseY < (y + rectHeight);
}


boolean mouseInQuit(float x, float y, float rectWidth, float rectHeight)
{
  return mouseX > x && mouseX < (x + rectWidth) && mouseY > y && mouseY < (y + rectHeight);
}

boolean mouseInStart(float x, float y, float rectWidth, float rectHeight)
{
  return mouseX > x && mouseX < (x + rectWidth) && mouseY > y && mouseY < (y + rectHeight);
}

boolean mouseInStory(float x, float y, float rectWidth, float rectHeight)
{
  return mouseX > x && mouseX < (x + rectWidth) && mouseY > y && mouseY < (y + rectHeight);
}

boolean mouseInGameMode(float x, float y, float rectWidth, float rectHeight)
{
  return mouseX > x && mouseX < (x + rectWidth) && mouseY > y && mouseY < (y + rectHeight);
}
