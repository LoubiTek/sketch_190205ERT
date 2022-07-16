String Credit = "Credit";
String DevName = "Created by LoubiTek";
float yScroll = 0;

void Draw_Credit()
{
  
  // Border
  background(0);
  stroke(255);
  noFill();
  strokeWeight(1);
  rect(0,0,width-1,height-1);
  
  strokeWeight(.1);
  for (i = 0; i < 127; i++)
  {
    point(random(width),random(height));
    for (j = 0; j < 64; j++)
    {
      stroke(255,8);
      line(width/2,height/2,random(width),random(height));
    }
  }
  
  textSize(9);
  textAlign(LEFT);
  text(Credit,146,1+yScroll);
  text(Title,120,16+yScroll);
  text(DevName,120,32+yScroll);
  
}

void Update_Credit()
{
  
  yScroll = yScroll + .5;
  
  if (yScroll >= height+16)
  {
    yScroll = -32;
  }
  if (keyPressed || mousePressed)
  {
    CreditState = false;
    Intro = true;
  }
}

void CreditState()
{
  Draw_Credit(); 
  Update_Credit();
}
