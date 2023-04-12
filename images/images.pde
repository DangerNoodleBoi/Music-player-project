/* background image example
*/
//Global Variables
int appWidth, appHeight;
float backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight;
PImage pic;
Boolean nightMode = true;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
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
pic = loadImage("6523f18b184e063e2306b0f648efffdd--firebird-trans-am-originals.jpg");
int picWidth = 735;
int picHeight =490;
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if (picWidth >= picHeight) {
  largerDimension = picWidth;
  smallerDimension= picHeight;
  imageHeightRatio = smallerDimension / largerDimension;
  picWidthAdjusted = backGroundImageWidth;
  picHeightAdjusted = picWidthAdjusted * imageHeightRatio;
} else {
  largerDimension = picHeight;
  smallerDimension= picWidth;
  imageWidthRatio = smallerDimension / largerDimension;
  picWidthAdjusted = picHeightAdjusted * imageWidthRatio;
  picHeightAdjusted = backGroundImageHeight;
}
//
//Rectangle Layout and Image drawing to CANVAS
rect(backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight);
//
if ( nightMode==false ) tint(255,128);
if (nightMode==true);
image( pic, backGroundImageX, backGroundImageY, backGroundImageWidth, backGroundImageHeight);
//
//End Main Program
