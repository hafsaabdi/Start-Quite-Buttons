//Global Variables
Boolean start = false, noNowReallyStart = false;
//
void setup() {} //End setup
//
void draw() 
{
  if (noNowReallyStart==true) {background(0); //Night Mode not considered yet
  rect();//Quit Button with Hoverover
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
}// End mousePressed
//
// End Main Program
//
