//Global Variables
float textRectX1, textRectY1, textRectWidth1, textRectHeight1;
float textRectX2, textRectY2, textRectWidth2, textRectHeight2;
float textRectX3, textRectY3, textRectWidth3, textRectHeight3;
PFont font;
color purpleInk=#2C08ff, resetWhiteInk=#FFFFFF;
String string1 = "what am i doing with my life ongod fr fr";
String string2 = "sobbing and screaming";
String string3 = "writhing in agony, end my suffering";
//
void allText() {}//End All Text
//
void textSetup() {
  //Population, from display
  textRectX1 = textRectX2 = textRectX3 = width*1/5;
  textRectWidth1 = textRectWidth2 = textRectWidth3 = width*3/5;
  textRectHeight1 = textRectHeight2 = textRectHeight3 = height*1/10;
  textRectY1 = height*1/10;
  textRectY2 = height*8/10;
  textRectY3 = height*5/10;
  //
  //rect( textRectX1, textRectY1, textRectWidth1, textRectHeight1 );
  //rect( textRectX2, textRectY2, textRectWidth2, textRectHeight2 );
  //rect( textRectX3, textRectY3, textRectWidth3, textRectHeight3 );
/*
println("Start of Console");
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choose, then createFont
*/
  font = createFont ("Harrington", 55); 
  //
}//End Text Setup()
//
void preTextDraw() {
fill(purpleInk);
textAlign (CENTER, CENTER);
textFont(font, height);
}//End Pre Text Draw
  
void textDraw1() {
preTextDraw();
//
textSize( 18 );
//
text( string1, textRectX1, textRectY1, textRectWidth1, textRectHeight1);
fill(resetWhiteInk);
}//End Text Draw 1
//
void textDraw2() {
  preTextDraw();
  //
  textSize(18);
  //
  text( string2, textRectX2, textRectY2, textRectWidth2, textRectHeight2);
  fill(resetWhiteInk);
}//End Text Draw 2
//
void textDraw3() {
  preTextDraw();
  //
  textSize(18);
  //
  text( string3, textRectX3, textRectY3, textRectWidth3, textRectHeight3);
  fill(resetWhiteInk);
}//End Text Draw 3
//End Text Subprogram
