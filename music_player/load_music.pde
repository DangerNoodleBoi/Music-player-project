void loadMusic() {
 minim = new Minim(this);
 //
 //Concentration of Pathway + File Name
 String musicPathway = "../music/"; //From Sketch to music Folder
 String SoundEffectPathway = "../sound effects/"; //From Sketch to sound effects Folder
 String alterFileName = "Alter - Hunter Milo  Royalty Free Music No Copyright Instrumental Background Music Free Download.mp3";
 String colonyFileName = "Colony - tubebackr  Royalty Free Music No Copyright Free Music Instrumental Free Download Music.mp3";
 String dreamsFileName = "Dreams - Bensound  Background Music No Copyright Happy Royalty Free Vlog Music Dance  EDM  Chill.mp3";
 String candyFileName = "Head Candy - William Rosati  Royalty Free Music - No Copyright Music.mp3";
 String holdFileName = "Hold On - Markvard  Royalty Free Music No Copyright Instrumental Background Music Free Download.mp3";
 String nightFileName = "Night Rider - JIGLR.mp3";
 String runawayFileName = "Runaway - Beau Walker  Royalty Free Music No Copyright Background Music For Videos Free Download.mp3";
 String vossFileName = "Voss - JAK  Royalty Free Music No Copyright Instrumental Background Music For Videos Free Download.mp3";
 String bruhFileName = "Bruh Sound Effect #2.mp3";
 String whatFileName = "What - Sound Effect.mp3";
  song0 = minim.loadFile(musicPathway + alterFileName);
  song1 = minim.loadFile(musicPathway + colonyFileName);
  song2 = minim.loadFile(musicPathway + dreamsFileName);
  song3 = minim.loadFile(musicPathway + candyFileName);
  song4 = minim.loadFile(musicPathway + holdFileName);
  song5 = minim.loadFile(musicPathway + nightFileName);
  song6 = minim.loadFile(musicPathway + runawayFileName);
  song7 = minim.loadFile(musicPathway + vossFileName);
  soundEffect0 = minim.loadFile(SoundEffectPathway + bruhFileName);
 // soundEffect1 = minim.loadFile(SoundEffectPathway + whatFileName);
}//End loadmusic
