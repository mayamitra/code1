//steps:
  //1. draw circle in center of screen
  //2. calculate the distance between mouse and circle
    //2a. if dist < radius --> change fill color
  //3. make boolean for if ellipse is clicked 
    //3a. true = mousePressed && dist < radius of circle
  //4. print value of boolean to the screen
  
//int: circlColor, circle size, xPositionCircle, yPositionCircle, backgroundColor, 
//int. continued: boolean for if ellipse is pressed

int circleSize;
int xPos, yPos;
color circleColor, bgColor;
boolean isCircleOn;

int distance;

void setup(){
  size(500, 500);
  bgColor = color(30, 200, 200);
  background (bgColor);
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
}

void draw(){
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  background(bgColor);
  
  if(distance < circleSize/2){
    circleColor = color(255, 0, 150);
  }
  else{
    circleColor = color(255, 255, 255);
  }
  
  //if(distance < circleSize/2 && mousePressed){
  //  bgColor = 255;
  //}
  //else{
  //  bgColor = 100;
  //}
  
  if(isCircleOn == true){ //or it can be if(isCircleOn)
    bgColor = 255;
    }
  else{
    bgColor = 150;
    }
  
  println(isCircleOn); //to check if your logic is working
  fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);
  
  }
  
void mousePressed(){
 if (distance < circleSize/2){
   isCircleOn = !isCircleOn;
   println(isCircleOn);
 }
  //if(distance < circleSize/2){
  //  bgColor = 255;
  //}
  //else{
  //  bgColor = 100;
  //}
}
