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
void setup() {
  size (300, 300);
  minim = new Minim(this);
  song0 = minim.loadFile("../music/Alter - Hunter Milo  Royalty Free Music No Copyright Instrumental Background Music Free Download.mp3");
  song1 = minim.loadFile("../music/Colony - tubebackr  Royalty Free Music No Copyright Free Music Instrumental Free Download Music.mp3");
  song2 = minim.loadFile("../music/Dreams - Bensound  Background Music No Copyright Happy Royalty Free Vlog Music Dance  EDM  Chill.mp3");
  song3 = minim.loadFile("../music/Head Candy - William Rosati  Royalty Free Music - No Copyright Music.mp3");
  song4 = minim.loadFile("../music/Hold On - Markvard  Royalty Free Music No Copyright Instrumental Background Music Free Download.mp3");
  song5 = minim.loadFile("../music/Night Rider - JIGLR.mp3");
  song6 = minim.loadFile("../music/Runaway - Beau Walker  Royalty Free Music No Copyright Background Music For Videos Free Download.mp3");
  song7 = minim.loadFile("../music/Voss - JAK  Royalty Free Music No Copyright Instrumental Background Music For Videos Free Download.mp3");
  soundEffect0 = minim.loadFile("../sound effects/Bruh Sound Effect #2.mp3");
  soundEffect1 = minim.loadFile("../sound effects/What - Sound Effect.mp3");
  //song0.loop(0); 
 } //End setup
//
void draw() {} //End draw
//
void keyPressed() { 
  //
  if ( key=='Q' || key=='q' ) exit();
  //
soundEffect0.play();
} //End keyPressed
//
void mousePressed() {
soundEffect0.rewind();
} //End mousePressed
//
//End MAIN Program
