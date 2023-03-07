//Global Variables
float buttonReferentMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
float playX, playY, pauseX, pauseY, stopX, stopY, muteX, muteY, loopIX, loopIY;
float ffX, ffY, rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
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
  playX = pauseX1;
  playY = pauseY1;
  //
  buttonPositionRow = 1;
  muteX = pauseX1;
  muteY = pauseY1 - (buttonPositionRow * buttonReferentMeasure);
  //
  loopIX = pauseX1;
  loopIY = pauseY1 + (buttonPositionRow * buttonReferentMeasure);
  //
  buttonPositionColumn = 2;
  ffX = pauseX1 + (buttonPositionColumn * buttonReferentMeasure);
  ffY = pauseY1;
  //
  rrX = pauseX1 - (buttonPositionColumn * buttonReferentMeasure);
  rrY = pauseY1;
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
  loopPlaylistY = pauseY1 + (buttonPositionColumn*buttonReferentMeasure);
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
 // triangle( playX, playY, playX, playY, playX, playY );
  //
  //MUTE Button
  rect( muteX, muteY, buttonSide, buttonSide ); //Top button
  //Students to develop
  //
  //Fast Forward in the Song
  rect( ffX, ffY, buttonSide, buttonSide ); //frist to the right
  //triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  //triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  //
  //Reverse in the Song
  rect( rrX, rrY, buttonSide, buttonSide ); //first to the left
  //triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  //triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
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
