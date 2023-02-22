import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
AudioPlayer soundEffect0, soundEffect1;
//
int time = 7000;
//
Boolean activateWindow=false;
//
void setup() {
  size (350, 400);
  loadMusic();
  //soundEffect1.loop(0);
  //song0.loop(0); 
 } //End setup
//
void draw() {
  if ( activateWindow == true ) background(0);
   println ( soundEffect0.position(), soundEffect0.length() );
  println ( "When does the sound stop? Indicates delay");
} //End draw
//
void keyPressed() { 
  //
  soundEffect0.play();
  soundEffect0.rewind();
  delay(1000);
  //println( "keypressed:", soundEffect0.length() );
//
 keyPressedShortCuts();
 //
} //End keyPressed
//
void mousePressed() {
  soundEffect0.rewind();
  if ( activateWindow==false ) activateWindow = true; 
} //End mousePressed
//
//End MAIN Program
