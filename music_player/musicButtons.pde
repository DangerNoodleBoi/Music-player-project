void buttons() {
  hehe();
  pog();


}
//Global Variables
float buttonReferentMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
float playX1, playY1, playX2, playY2, playX3, playY3;
float stopX, stopY, muteX, muteY, shuffleX, shuffleY;
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A;
float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;
float rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A;
float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;
float rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3, nextX1b, nextY1b, nextWidth; 
float prevX1, prevY1, prevX2, prevY2, prevY3, prevX3, prevX1b, prevY1b, prevWidth;
float loopPlaylistX, loopPlaylistY;
//
void hehe() {
  //Display
 
  //fullScreen(); //displayWidth, displayHeight
  //
  //Population: visual data
  buttonReferentMeasure = width * 1/18;
  buttonSide = buttonReferentMeasure;  
  spaceWidth = buttonReferentMeasure * 1/8;
  spaceHeight = buttonReferentMeasure;
  //
  float centerX = width * 1/2;
  float centerY = height * 3/4;
  int buttonPositionColumn, buttonPositionRow;
  print("Confirming Center X:", centerX);
  println("/t Confirming Center Y", centerY);
  //
  pauseX1 = centerX - buttonReferentMeasure*1/2;
  pauseY1 = centerY - buttonReferentMeasure*1/3;
  pauseWidth = buttonReferentMeasure *1/4;
  pauseX2 = centerX + buttonReferentMeasure*1/4;
  pauseY2 = pauseY1;
  playX1 = pauseX1;
  playY1 = pauseY1;
  playX3 = playX1;
  playY3 = pauseY1 + buttonReferentMeasure;
  playX2 = playX1 + buttonReferentMeasure;
  playY2 = playY1 + (playY3-playY1)*1/2;
  //
  buttonPositionRow = 2;
  muteX = pauseX1;
  muteY = pauseY1 - (buttonPositionRow * buttonReferentMeasure )/1.6;
  //
  buttonPositionRow = 2;
  buttonPositionColumn=6;
  shuffleX = pauseX1 - (buttonPositionColumn*buttonReferentMeasure);
  shuffleY = pauseY1 + (buttonPositionRow * buttonReferentMeasure)/1.6;
  //
  buttonPositionColumn = 2;
  ffX1A = pauseX1 + ( buttonPositionColumn*buttonReferentMeasure );
  ffY1A = pauseY1;
  ffX3A = ffX1A;
  ffY3A = ffY1A + buttonReferentMeasure;
  ffX2A = ffX1A + buttonReferentMeasure*1/2;
  ffY2A = ffY1A + (ffY3A-ffY1A)*1/2;
  ffX1B = ffX2A;
  ffY1B = ffY1A;
  ffX2B = ffX2A + buttonReferentMeasure*1/2;
  ffY2B = ffY2A;
  ffX3B = ffX2A;
  ffY3B = ffY3A;
  //
  rrX1A = pauseX1 - ( buttonPositionColumn+buttonReferentMeasure );
  rrY1A = pauseY1;
  rrX3A = rrX1A;
  rrY3A = rrY1A + buttonReferentMeasure;
  rrX2A = rrX1A - buttonReferentMeasure*1/2;
  rrY2A = rrY1A + (rrY3A-rrY1A)*1/2;
  rrX1B = rrX2A;
  rrY1B = rrY1A;
  rrX2B = rrX2A - buttonReferentMeasure*1/2;
  rrY2B = rrY2A;
  rrX3B = rrX2A;
  rrY3B = rrY3A;
  //
  buttonPositionColumn = 4;
  nextX = pauseX1 + (buttonPositionColumn*buttonReferentMeasure);
  nextY = pauseY1;
  nextX1 = nextX;
  nextY1 = nextY;
  nextX3 = nextX;
  nextY3 = nextY + buttonReferentMeasure;
  nextX2 = nextX + buttonReferentMeasure*1/2;
  nextY2 = nextY + (ffY3A-ffY1A)*1/2;
  nextX1b = nextX + buttonReferentMeasure*2/3;
  nextY1b = nextY;
  nextWidth = buttonReferentMeasure*1/3;
  //
  
  prevX = pauseX1 - ( buttonPositionColumn + buttonReferentMeasure );
  prevY = pauseY1;
  prevX1 = rrX2B/1.15;
  prevY1 = prevY;
  prevX3 = prevX1;
  prevY3 = prevY + buttonReferentMeasure;
  prevX2 = prevX1 - buttonReferentMeasure*1/2;
  prevY2 = prevY + (prevY3-prevY1)*1/2;
  prevX1b = prevX2 - buttonReferentMeasure*1/2;
  prevY1b = prevY;
  prevWidth = buttonReferentMeasure*1/3;
  //
  buttonPositionColumn = 6;
  loop1X = pauseX1 + (buttonPositionColumn*buttonReferentMeasure);
  loop1Y = pauseY1;
  //
  stopX = pauseX1 - (buttonPositionColumn*buttonReferentMeasure);
  stopY = pauseY1;
  //
  buttonPositionRow= 2;
  buttonPositionColumn=6;
  loopPlaylistX = pauseX1 + (buttonPositionColumn*buttonReferentMeasure);
  loopPlaylistY = pauseY1 + (buttonPositionRow*buttonReferentMeasure)/1.6;
  //
} //End setup
//
void pog() {

  //Button Space
  //rect( spaceX, spaceY, spaceWidth, buttonSide );
  //rect( spaceX, spaceY, spaceHeight, buttonSide );
  //
  //Stop Button
  rect( stopX, stopY, buttonSide, buttonSide ); //FAR LEFT BUTTON
  //rect( stopX, stopY, buttonSide, buttonSide ); //Square shape
  //
  //Pause Button
  //rect( pauseX1, pauseY1, buttonSide, buttonSide ); //MIDDLE BUTTON
  rect( pauseX1, pauseY1, pauseWidth, buttonSide );
  rect( pauseX2, pauseY2, pauseWidth, buttonSide );
  //
  //Play Button
  //rect( playX, playY, buttonSide, buttonSide ); //not sure where this one is
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  //
  //MUTE Button
  rect( muteX, muteY, buttonSide, buttonSide ); //Top button
  //Students to develop
  //
  //Fast Forward in the Song
  //rect( ffX1A, ffY1A, buttonSide, buttonSide ); //frist to the right
  triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  //
  //Reverse in the Song
  //rect( rrX, rrY, buttonSide, buttonSide ); //first to the left
  triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
  //
  //Next Button, skip file
 // rect( nextX, nextY, buttonSide, buttonSide ); //second to the right
  triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );
  rect( nextX1b, nextY1b, nextWidth, buttonSide );
  //
  //Previous Button
 // rect( prevX, prevY, buttonSide, buttonSide ); //second to the left
  triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  rect( prevX1b, prevY1b, prevWidth, buttonSide );
  //
  //Loop the Song Once
  rect( loop1X, loop1Y, buttonSide, buttonSide ); //far right
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  //
  //Loop the Playlist (infinitely)
  rect( loopPlaylistX, loopPlaylistY, buttonSide, buttonSide ); //down&right
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //triangle( loopPlaylistX1, loopPlaylistY1, loopPlaylistX2, loopPlaylistY2, loopPlaylistX3, loopPlaylistY3 );
  //
  //shuffle the playlist
  rect( shuffleX, shuffleY, buttonSide, buttonSide ); //Down&left
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  //
} //End draw
//
  

//End MAIN Program
