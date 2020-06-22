void Intro()
{
  cursor(HAND);
  background(0);
  Audio_Player();
  stroke(CGA_Palette[1]++);
  fill(CGA_Palette[0]);
  rect(0,0,width-1,height-1);
  
  stroke(CGA_Palette[3]);
  float distance_left = random(0,1);
  line(distance_left,0,distance_left,199);
  
  r = r + .001;
  x = x + .0002;
  y = y + .0003;
  
  for (i=-32; i<127; i++)
  {
    translate(width/2,height/2);
    scale(.314);
    stroke(CGA_Palette[2]);
    fill(CGA_Palette[1]);
    rotate(r*TWO_PI);
    ellipse(x,y,8*i,8*i);
    
    //stroke(CGA_Palette[3]);
    //fill(CGA_Palette[0]);
    rotate(r*PI);
    ellipse(0,-r--,2*i,2*i);
    
    scale(1.1);
    translate(x,y);
    textSize(32);
    textAlign(LEFT);
    fill(0);
    text("Welcome to my game !",x,y);
    fill(255);
    text("Welcome to my game !",127,0);
    
    noFill();
    rect(x,y,r,r);
    strokeWeight(.628*TWO_PI);
    
    stroke(CGA_Palette[3]);
    fill(CGA_Palette[0]);
    rotate(r);
    ellipse(0,0,2*i,2*i);
  }
  
  if (x == width || y == height)
  {
    x = 0;
    y = 0;
  }
  
  
  if (keyPressed || mousePressed)
  {
    Intro = false;
  }
}
