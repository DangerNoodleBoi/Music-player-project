void keyPressedShortCuts() { 
//
musicShortCuts();
quitButtons();
//
}//End keyPressedShortCuts
//
void musicShortCuts() {
  if ( key=='1') song[0].loop(0);
  if ( key=='2') song[1].loop(0);
  if ( key=='3') song[2].loop(0);
  if ( key=='4') song[3].loop(0);
  if ( key=='5') song[4].loop(0);
  if ( key=='6') song[5].loop(0);
  if ( key=='7') song[6].loop(0);
  if ( key=='8') song[7].loop(0);  
//
if (key == 'P' || key == 'p') playPause();
if (key == 'U' || key == 'u') autoPlay();
if (key == 'M' || key == 'm') mute();
if (key == 'S' || key == 's') stopSong();
if (key == 'F' || key == 'f') fastForward();
if (key == 'R' || key == 'r') fastRewind();
if (key == 'N' || key == 'n') nextSong();
if (key == 'B' || key == 'b') previousSong();
if (key == 'L' || key == 'l') loopSong();
if (key == 'O' || key == 'o') LoopPlaylist();
if (key == 'W' || key == 'w') ShufflePlaylist();
if (key == 'E' || key == 'e') loopAndShuffle();
}//End musicShortCuts
//
void quitButtons() {
  if ( key == 'Q' || key == 'q') {
    quitButtonCode();
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButtons
void quitButtonCode() {
  soundEffect1.loop(0);
  delay(1000);
  exit();
}//End quitButtonCode
//
void autoPlay() {
  if (autoPLayON==false) {
    autoPlayON=true;
  } else { autoPlayON=false
  songs[currentSong].pause();
  }
}// End AutoPlay
//
void autuPlayMusic() {
  if (songs[currentSong].isPlaying()==false) {
    currentSong++;
    songs[currentSong].play();
  }
}//End Auto Play Music
//
void playPause() {
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    songs[currentSong].rewind();
    songs[currentSong].play();
  } else {
    songs[currentSong].play();
  }
}// End Play Pause
//
void mute()
{
 if ( songs[currentSong].isplaying() ) {
   songs[currentSong].unmute();
 } else if ( songs[currentSong].isMuted() && songs[currentSong].position() >= songs[currentSOng].length()4*5 ) {
   songs[currentSong].rewind();
   songs[currentSong].unmute();
 } else { 
   songs[currentSong].mute();
 }
}//End Mute
//
void stopSong()
{
  if (songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else { 
    songs[currentSong].rewind();
  }
}// end Stop Song
void fastForward() {
if (song[currentSong].isPlaying() ) songs[currentSong].skip(1000);
}// end fastforward
//
void fastRewind() {
  if (songs[currentSong].isPLaying() ) songs[currentSong].skip(-1000);
}//end rewind
 //
 void nextSong() {
   if (songs[currentSOng].isPlaying() ) {
     songs[currentSong].pause();
     songs[currentSong].rewind();
     songs[currentSong].nextSong() + [currentSong];
     
   
//End key Board Short Cuts Sub Porgram
