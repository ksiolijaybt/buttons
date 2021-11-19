 // Global Variables
 float buttonx, buttony, buttonWidth, buttonHeight;
 color buttonColour,blue=#1018E3, green=#0CEAE5, white=#FFFFFF, reset=white;

  void setup() {
  fullScreen();
  //populaton
  buttonx =displayWidth*1/4;
  buttony =displayHeight*1/3;
  buttonWidth= displayWidth *1/2;
  buttonHeight= displayHeight*1/3;
 }//End setup()

  void draw() {
  background(white);
  //println(mouseX,mouseY);
   if ( mouseX >= buttonx && mouseY >= buttony && mouseX <= buttonx+buttonWidth && mouseY <= buttony+buttonHeight ) {
      buttonColour = color(random(255), random(255), random(255));
  } else {
    buttonColour = green;
  }//End IF Button Colour
  fill(buttonColour);
  rect(buttonx, buttony, buttonWidth, buttonHeight);
  fill(reset);
 
}//End draw()
void mousePressed() {
  if ( mouseX >= buttonx && mouseY >= buttony && mouseX <= buttonx+buttonWidth && mouseY <= buttony+buttonHeight ) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
