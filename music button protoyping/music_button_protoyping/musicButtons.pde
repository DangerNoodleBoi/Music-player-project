//Global Variables
float buttonReferentMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
float playX1, playY1, playX2, playY2, playX3, playY3;
float stopX, stopY, muteX, muteY, loopIX, loopIY;
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A;
float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;
float rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A;
float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;
float rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
float loopPlaylistX, loopPlaylistY;
//
void setup() {
  //Display
  size(900, 700); //width, height
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
  pauseY1 = centerY - buttonReferentMeasure*1/2;
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
  buttonPositionRow = 1;
  muteX = pauseX1;
  muteY = pauseY1 - (buttonPositionRow * buttonReferentMeasure);
  //
  loopIX = pauseX1;
  loopIY = pauseY1 + (buttonPositionRow * buttonReferentMeasure);
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
  //
  prevX = pauseX1 - ( buttonPositionColumn * buttonReferentMeasure );
  prevY = pauseY1;
  //
  buttonPositionColumn = 6;
  loop1X = pauseX1 + (buttonPositionColumn*buttonReferentMeasure);
  loop1Y = pauseY1;
  //
  stopX = pauseX1 - (buttonPositionColumn*buttonReferentMeasure);
  stopY = pauseY1;
  //
  buttonPositionRow= 2;
  loopPlaylistX = pauseX1;
  loopPlaylistY = pauseY1 + (buttonPositionRow*buttonReferentMeasure);
  //
} //End setup
//
void draw() {

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
  rect( nextX, nextY, buttonSide, buttonSide ); //second to the right
  //triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );
  //rect( nextX, nextY, nextWidth, buttonSide );
  //
  //Previous Button
  rect( prevX, prevY, buttonSide, buttonSide ); //second to the left
  //triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  //rect( prevX, prevY, prevWidth, buttonSide );
  //
  //Loop the Song Once
  //Students to Develop
  rect( loop1X, loop1Y, buttonSide, buttonSide ); //far right
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  //
  //Loop the Song Infinitely
  //Students to Develop
  rect( loopIX, loopIY, buttonSide, buttonSide ); //first down
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  //
  //Loop the Playlist (infinitely)
  //Students to Develop
  rect( loopPlaylistX, loopPlaylistY, buttonSide, buttonSide ); //complete bottom
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //triangle( loopPlaylistX1, loopPlaylistY1, loopPlaylistX2, loopPlaylistY2, loopPlaylistX3, loopPlaylistY3 );
  //
  //OPTINAL Shuffle
  //rect( shuffleX, shuffleY, buttonSide, buttonSide ); //Layout
  //2-D Shapes
  //
} //End draw
//
  
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
