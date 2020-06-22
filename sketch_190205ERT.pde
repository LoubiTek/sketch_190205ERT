// Prototype Text Adventure Graphics Game | 2019 | LoubiTek

// Booleans
boolean GameLoop = true;
boolean Intro = true;
boolean CreditState = true;
boolean Collide = true;
boolean Event = true;
boolean Game = true;

PImage Background_1;
PImage IMG_1;
PImage ORN;
PImage SpeakSnd;
PImage BIRD;

byte i = 0;
byte j = 0;

float x = 0;
float y = 0;

// Init
void Initialize()
{
  size(RenderWindow_w,RenderWindow_h,RenderEngine);
  println("Size: "+RenderWindow_w+"*"+RenderWindow_h+" | "+RenderEngine);
  print("Title: "+Title+" | Year: "+Year+" | Author: "+Author);
  smooth(0);
}

// Settings
void settings()
{
  Initialize();
  Loading();
}

// Loading
void Loading()
{
  // LOAD IMG's
  Background_1 = loadImage("Abstract.png"); 
  IMG_1 = loadImage("IMG_1.png");
  ORN = loadImage("ORN.png");
  SpeakSnd = loadImage("SpeakSnd.png");
  BIRD = loadImage("BIRD.png");
  
  minim = new Minim(this);
  WhiteNoise = minim.loadFile("WhiteNoise.wav",256);
  Kick = minim.loadFile("Kick.wav",256);
  Square = minim.loadFile("Square.wav",256);
}

// Setup
void setup()
{
  background(127);
  frameRate(FPS);
  strokeWeight(1);
  colorMode(RGB);
}

// Draw
void draw()
{
  
  if (GameLoop == Intro)
  {
    Intro();
  }
  else Game();
  
}

void Game()
{
   Scene();
   //CreditState();
   if (mousePressed == true)
   {
     Scene_1();
   }
   if (keyPressed == true)
  {
    Scene_2();
  }
}
