/* Background Image Example
 */
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
String pathway, fileName;
Boolean nightMode=false;
float picX_Adjusted=0.0, picY_Adjusted=0.0, picWidthAdjusted=0.0, picHeightAdjusted=0.0; //IF requires previous value, not NULL
float whiteSpace=0.0;
Boolean imageCenter=false, imageRightBottom=false; //Dev-level Image Justification
//
size(500, 100); //Landscape
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Pathway & Files
fileName = "6523f18b184e063e2306b0f648efffdd--firebird-trans-am-originals.jpg";
pic = loadImage( fileName );
int picWidth = 735; 
int picHeight = 490; 
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if ( picWidth >= picHeight ) { 
  largerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = float (smallerDimension) / float (largerDimension); 
  picWidthAdjusted = backgroundImageWidth; 
  picHeightAdjusted = picWidthAdjusted * imageHeightRatio; 
  whiteSpace = backgroundImageHeight - picHeightAdjusted;
  picX_Adjusted = backgroundImageX;
  picY_Adjusted = backgroundImageY; 
  if ( imageCenter==true ) picY_Adjusted = backgroundImageY + whiteSpace*1/2;
  if ( imageRightBottom==true) picY_Adjusted = backgroundImageY + whiteSpace;
  //
  if ( picHeightAdjusted > backgroundImageHeight ) { 
    picHeightAdjusted = backgroundImageHeight;
    picWidthAdjusted = picWidthAdjusted * imageHeightRatio;
    whiteSpace = backgroundImageWidth - picWidthAdjusted;
    picX_Adjusted = backgroundImageX;
    picY_Adjusted = backgroundImageY;
    if ( imageCenter==true ) picX_Adjusted = backgroundImageX + whiteSpace*1/2;
    if ( imageRightBottom==true) picX_Adjusted = backgroundImageX + whiteSpace;
  }
} else { //FALSE if Portrait
  /* Students to finish
   largerDimension = ;
   smallerDimension = ;
   imageWidthRatio = ;
   picX_Adjusted = ;
    picY_Adjusted = ;
   picWidthAdjusted = ;
   picHeightAdjusted = ;
   whiteSpace = ;
   image justifications with single line IFs
   */
}

if ( nightMode==false ) tint(255, 128); //Day mode, half white (128/255=1/2)
if ( nightMode==true ) tint(64, 64, 40); //Night mode, much less BLUE

println( picWidthAdjusted, picHeightAdjusted ); //View Human Error on variables, zero values
image( pic, picX_Adjusted, picY_Adjusted, picWidthAdjusted, picHeightAdjusted );
//
//End Main Program
