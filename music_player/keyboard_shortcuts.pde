void keyPressedShortCuts() { 
//
musicShortCuts();
quitButtons();
//
}//End keyPressedShortCuts
//
void musicShortCuts() {
  if ( key=='1') songs[0].loop(0);
  if ( key=='2') songs[1].loop(0);
  if ( key=='3') songs[2].loop(0);
  if ( key=='4') songs[3].loop(0);
  if ( key=='5') songs[4].loop(0);
  if ( key=='6') songs[5].loop(0);
  if ( key=='7') songs[6].loop(0);
  if ( key=='8') songs[7].loop(0);  
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
if (key == 'O' || key == 'o') loopPlaylist();
if (key == 'W' || key == 'w') shufflePlaylist();
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
  soundEffects[1].loop(0);
  delay(1000);
  exit();
}//End quitButtonCode
//
void autoPlay() {
  if (autoPlayON==false) {
    autoPlayON=true;
  } else { autoPlayON=false;
  songs[currentSong].pause();
  }
}// End AutoPlay
//
void autoPlayMusic() {
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
 if ( songs[currentSong].isPlaying() ) {
   songs[currentSong].unmute();
 } else if ( songs[currentSong].isMuted() && songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
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
if (songs[currentSong].isPlaying() ) songs[currentSong].skip(1000);
}// end fastforward
//
void fastRewind() {
  if (songs[currentSong].isPlaying() ) songs[currentSong].skip(-1000);
}//end rewind
 //
 void nextSong() {
  if ( songs[currentSong].isPlaying() ) {
    //Students to finish
    //Current Song: .pause(), .rewind()
    //Next Song: currentSong++
    //Now: DELAY-1-Second, .play()
  } else if (currentSong >= songs.length-1 ) {
    currentSong = 0;
  } else {
    songs[currentSong].rewind();
    currentSong++;
      }
}
//End Next Song
//
void previousSong() {
  //ERROR: ArrayListOutOfBounds
  currentSong--;
}//End Previous Song
//
void loopSong() {
}//End Loop Song
//
void loopPlaylist() {
}//End Loop the Playlist
//
void shufflePlaylist() {
}//End Shuffle the Playlist()
//
void loopAndShuffle() {
  //Student to finish
  //Hint: random() and casting, see Global Variables' currentSong declaration
}//End Loop And Shuffle
//

//End Key Board Short Cuts Sub Program
     
   
  //End key Board Short Cuts Sub Porgram
