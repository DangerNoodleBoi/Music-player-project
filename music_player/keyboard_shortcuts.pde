void keyPressedShortCuts() { 
//
musicShortCuts();
quitButtons();
//
}//End keyPressedShortCuts
//
void musicShortCuts() {
  if ( key=='1') song0.loop(0);
  if ( key=='2') song1.loop(0);
  if ( key=='3') song2.loop(0);
  if ( key=='4') song3.loop(0);
  if ( key=='5') song4.loop(0);
  if ( key=='6') song5.loop(0);
  if ( key=='7') song6.loop(0);
  if ( key=='8') song7.loop(0);  
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
//End key Board Short Cuts Sub Porgram
