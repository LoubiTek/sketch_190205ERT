int[] Background = {0,width+219,height+99};

int w = 16;
int h = 16;

float r = 0;

String Credit = "Credit";
String DevName = "Created by LoubiTek";
float yScroll = 0;

int compteur = 0;

// Scene
void Scene()
{
  D_Scene();
  U_Scene();
}

void Scene_1()
{
  cursor(MOVE);
  compteur = compteur + 1;
  fill(CGA_Palette[1]+second());
  textSize(11);
  text(Text_3,0,-64);
  if (LADDER_y >= 0)
  {
    stroke(0,255,0);
    noFill();
    rect(LADDER_x,LADDER_y,LADDER_w,LADDER_h);
  }
  rotate(radians(compteur));
  stroke(CGA_Palette[2]);
  fill(CGA_Palette[2],127);
  rect(0, 0, width, height);
}

void Scene_2()
{
  cursor(MOVE);
  compteur = compteur + 2;
  fill(CGA_Palette[2]+second());
  rotate(compteur);
  stroke(CGA_Palette[3]++);
  fill(CGA_Palette[2],127);
  ellipse(0, 0, height-92, height-92);
}

// Draw_Scene
void D_Scene()
{
  cursor(HAND);
  //scale(1);
  //translate(x,y);
  textSize(11);
  textAlign(CENTER);
  strokeWeight(1);
  // Background
  stroke(255);
  fill(0);
  rect(Background[0],Background[0],Background[1],Background[2]);
  image(Background_1,0,0);
  
  // IF SPECIAL KEY for HELP | Need to substract Background Rect
  //filter(INVERT);
  //image(Background_1,0,0);
  //rect(Background[0],Background[0],Background[1],Background[2]);
  
  translate(width/2,height/2);
  image(IMG_1,8,-48);
  //rectMode(CENTER);
  
  image(ORN,ORN_x,ORN_y);
  fill(CGA_Palette[0]);
  
  image(SpeakSnd,-144,-84);
  image(SpeakSnd,113,-84);
  
  fill(CGA_Palette[1]--);
  text(Text_1,0,64);
  text(Text_2,0,80);
  
  stroke(255,0,0);
  noFill();
  rect(LADDER_x,LADDER_y,LADDER_w,LADDER_h);
  
  fill(CGA_Palette[3]);
  text(Text_LADDER,18,-64);
  
  println("x: "+mouseX);
  println("y: "+mouseY);
  
  fill(CGA_Palette[0]);
  textSize(7);
  text("FPS: "+FPS,-86,-34);
  
  //image(BIRD,0,0);
  
}

// Update_Scene
void U_Scene()
{
  
  ORN_y = ORN_y + .0314;
  
  // Keyboard Events
  
  // Audio
  Square.play();
  
  // Left SndSpk
  if (mouseX > 10 && mouseX < 50 && mouseY > 10 && mouseY < 50)
  {
    Square.loop();
  }
  
}


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
  
}

void CreditState()
{
  Draw_Credit(); 
  Update_Credit();
}
