//Global Variables
int appWidth,appHeight;
Boolean start=false, noNowReallyStart = false;
float quitButtonX, quitButtonY, quitButtonWidth,quitButtonHeight;
float quitButtonColour, yellow=#FFFF00, purple=#FF00FF;
//
void setup() 
{
 //Display & Oreintation Algorithm not consider yet
  size (400,300);//Landscape
 //FullScreen(); //displayWidth,displayHeight
 displayOrientation();
 appWidth=width;
 appHeight=height;
 //
 //Population
 float centerX = appWidth * 1/2;
 float centerY = appHeight * 1/2;
 quitButtonX = centerX - (appWidth * 1/4);
 quitButtonY = centerY - (appHeight * 1/4);
 quitButtonWidth= appWidth * 1/2;//could be centerX, but that is a point
 quitButtonHeight= appHeight * 1/2;// same comment as centerX, point not line
 } 
 //End setup
//
void draw() 
{
  if (noNowReallyStart==true) {
    background(0); //Night Mode not considered yet
    //
    //Hlver Over Feaure
    println("X-value",quitButtonX, mouseX ,quitButtonX+quitButtonWidth);
    println("Y-value",quitButtonY, mouseY ,quitButtonY+quitButtonHeight);
    //
    //Quit Button Hover Over Feature
    if ( mouseX>quitButtonX&& mouseX<quitButtonX+quitButtonWidth && mouseY<quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColour = yellow;//Remember knight Mode
    //Logical Rectangle Boolean True only when hover over active
  } else {
    quitButtonColour = purple;//Remember Day Mode
    } //End Quit Button Colour
    //
    fill(quitButtonColour);
    rect(quitButtonX, quitButtonY, quitButtonWidth,quitButtonHeight);//Quit Button with Hoverover
  }
} //End draw
//
void keyPressed() {
  if (key==' ' && start==true) noNowReallyStart =true;
  //
  //Prototype Key Board Quit BUtton OR Shortcut
  if(key=='Q' || key=='q') exit() ;
  if(key==CODED && keyCode ==ESC) exit() ;
}  //End keyPressed
//
void mousePressed() 
 {
  //
  //OS Level Start Button
  start = true;
  println(" To Start, Press the Space Bar");
  //
  //Quit Button: Logical Rectangle, see println in draw()
  if ( mouseX>quitButtonX&& mouseX<quitButtonX+quitButtonWidth && mouseY<quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit ();
  //
}// End mousePressed
//
// End Main Program
//
