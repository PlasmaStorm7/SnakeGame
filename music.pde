int bandResolution=1024;
String song;
void playMusic(){
initializeSong();

  
}

void initializeSong()
{
  song=random()
  minim = new Minim(this);
  player=minim.loadFile(song, bandResolution);
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
