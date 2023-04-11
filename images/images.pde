/* background image example
*/
//Global Variables
int appWidth, appHeight;
float backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight;
PImage pic;
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
pic = loadImage("77firebirdTransAm.jpg");
//
//Rectangle Layout and Image drawing to CANVAS
rect(backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight);
//
image( pic, backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight);
//
//End Main Program
