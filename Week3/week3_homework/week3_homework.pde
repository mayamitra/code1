//steps:
//1. a. Draw square in center of screen 
   //b. Calculate the distance between mouse and square
   //c. print this value to the console
//2. Make boolean for if mouse is on square
  //true = dist < half the width of the square
//3. Constrict the movement of a shape within an area of your canvas
  //a. create variables for coordinates of square and set as width and height /2 
  //b. create variables for xSpeed and ySpeed and set them as random within a range
  //c. set x = x+xSpeed and y = y+ySpeed in DRAW
  //d. make it so that it doesn't go off the screen
//4. Create a button that moves a shape to a new random position on the canvas
  //a. Draw square in top left corner
  //b. Calculate the distance between mouse and square
  //c. Make boolean for if mouse is on square
    //c1. true = mousePressed && dist < radius of circle --> randomly position orig. square

int squareSize;
float x, y;
color squareColor, bgColor;
boolean isMouseOnSquare;
int distance;
float xSpeed, ySpeed;
boolean isMouseOnButton;
int buttonDistance;

void setup (){
  size(500, 500);
  bgColor = color(20, 50, 200);
  background (bgColor);
  x = width/2;
  y = height/2;
  squareSize = 100;
  xSpeed = random (1,5);
  ySpeed = random (1,5);
}

void draw (){
  background(bgColor);
  fill(0, 100, 0);
  rectMode(CENTER);
  rect (int(width/2), int(height/2), 300, 300);
  fill(squareColor);
  rectMode(CENTER);
  rect(x, y, squareSize, squareSize);
// change color of square if mouse is on it   
  distance = int(dist(x, y, mouseX, mouseY));
  if(distance < squareSize/2){
    squareColor = color(255);
  }
  else{
    squareColor = color(0);
  }
  println(distance);
//  boolean for if mouse is on square
  if(distance < squareSize/2){
    isMouseOnSquare = true;
  }
  else{
    isMouseOnSquare = false; 
  }
  println(isMouseOnSquare); //just to check my code is right 
// make the square bounce! 
 if(xSpeed == ySpeed){
   xSpeed = random (1, 5);
   ySpeed = random (1,5);
 }
 if(x > 400-squareSize/2 || x < 100+squareSize/2){
   xSpeed = xSpeed * -1;
 }
 if(y > 400-squareSize/2 || y < 100+squareSize/2){
   ySpeed = ySpeed * -1;
 }
 x = x+xSpeed;
 y = y+ySpeed;
//button that moves a shape to a new random position
 rectMode(CORNER);
 text("Click button to move square!", 50, 10);
 fill(255);
 rect(0, 0, 50, 50);
 buttonDistance = int(dist(0, 0, mouseX, mouseY));
//attempt at making toggle switch to turn bouncing ball on and off  
   if(mousePressed == true) {
   //x = width/2;
   // y = height/2;
    xSpeed = 0;
    ySpeed = 0;
  }

}

void mousePressed(){
  //  another attempt at toggle switch that turns bouncing ball on and off
  //if (distance < squareSize/2){
  //  //x = width/2;
  //  //y = height/2;
  //  xSpeed = 0;
  //  ySpeed = 0;
  //}
  
  //making the button work! 
  if (buttonDistance < 50){
    x = random (150, 350);
    y = random (150, 350);
  }
}
