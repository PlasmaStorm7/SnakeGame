int bandResolution=1024;
String[] song={ "Coasting.mp3", "Sandbox.mp3", "Vanishing-Point.mp3"};
int index =0;
float gain=-18;
int songLength;
int songLength2;


void initializeSong(String songg)
{
  minim = new Minim(this);
  player=minim.loadFile(songg, bandResolution);
  println(songg);
  player.play();
  player.setGain(gain);
  player.cue(player.length());
  //println("player.position()="+player.position() );
  songLength=player.position();
  player.cue(0);
}


void elevatorSong()
{
  index=int(random(song.length));
  minim2 = new Minim(this);
  elevatormusic=minim.loadFile("Coasting.mp3", bandResolution);
  elevatormusic.play();
  elevatormusic.setGain(gain);
  elevatormusic.cue(player.length());
  //println("player.position()="+player.position() );
  songLength2=elevatormusic.position();
  elevatormusic.cue(0);
  elevatormusic.pause();
}
 void replaySong()
{
  if ( player.position() >= songLength-20 )
  {
    player.rewind();
    player.play();
  }
  if ( elevatormusic.position() >= songLength-20 )
  {
    elevatormusic.rewind();
    elevatormusic.play();
  }
}
