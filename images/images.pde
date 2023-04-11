/* background image example
*/
//Global Variables
int appWidth, appHeight;
float backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight;
PImage pic;
Boolean nightMode = true;
//
size(1200, 800);
appWidth = width ;
appHeight = height ;
//
//Population
backGroundImageX = appWidth*0 ;
backGroundImageY = appHeight*0;
backGroundImageWidth = appWidth-1;
backGroundImageHeight = appHeight-1;
pic = loadImage("6523f18b184e063e2306b0f648efffdd--firebird-trans-am-originals.jpg");
//
//Rectangle Layout and Image drawing to CANVAS
rect(backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight);
//
if ( nightMode==true ) tint(255,128);
if (nightMode==true) tint(64,64,40);
image( pic, backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight);
//
//End Main Program
