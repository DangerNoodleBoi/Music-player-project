void images() {
//Pathway & Files
int appWidth, appHeight;
PImage picture;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
String pathway = "../images/";
String fileName = "6523f18b184e063e2306b0f648efffdd--firebird-trans-am-originals.jpg";
//
appWidth = width;
appHeight = height;
//
backgroundImageX = appWidth*1/5.55;
backgroundImageY = appHeight*1/4;
backgroundImageWidth = appWidth-175;
backgroundImageHeight = appHeight-500;
//
picture = loadImage( pathway+fileName );
//
image(picture, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
//
int picWidth = 300;
int picHeight = 300;
}
//End sub program
