import ddf.minim.*;
Minim minim;

AudioPlayer WhiteNoise;
AudioPlayer Kick;
AudioPlayer Square;

void Audio_Player()
{
  WhiteNoise.play();
  for (j=0; j<8; j++)
  {
    Kick.setGain(1);
    Kick.play(j);
  }
}

void stop()
{
  WhiteNoise.close();
  Kick.close();
  Square.close();
  minim.stop();
  super.stop();
}

void mousePressed()
{
  WhiteNoise.rewind();
  Kick.rewind();
  //Square.rewind();
}
