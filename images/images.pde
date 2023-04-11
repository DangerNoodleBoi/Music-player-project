/* background image example
*/
//Global Variables
int appWidth, appHeight;
float backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight;
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
//
//Rectangle Layout and Image drawing to CANVAS
rect(backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight);
//
//image();
//
//End Main Program
