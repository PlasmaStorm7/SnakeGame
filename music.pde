int bandResolution=1024;
String[] song={ "Coasting.mp3", "Sandbox.mp3", "Vanishing-Point.mp3"};
int index =0;
float gain=-18;
int songLength;
void playMusic(){
initializeSong();

  
}

void initializeSong()
{
  index=int(random(song.length));
  minim = new Minim(this);
  player=minim.loadFile(song[index], bandResolution);
  println(song[index]);
  player.play();
  player.setGain(gain);
  player.cue(player.length());
  //println("player.position()="+player.position() );
  songLength=player.position();
  player.cue(0);
}
void replaySong()
{
  if ( player.position() >= songLength-20 )
  {
    player.rewind();
    player.play();
  }
}
