//Drawing of a house on a lawn, with the moon in the background. 
//The stars are randomly scattered across the screen, and they rotate. 
//Pressing the up/down key changes the size of the stars
//When you click anywhere on the screen, the roofs of the houses change to a random color. 

int moonCenter;
int moonWidth;
int lawnHeight;
int houseX1;
int houseY1;
int houseWidth;
int houseHeight;
int roofX1;
int roofX2;
int roofX3;
int roofY1;
int roofY2;
int roofY3;
int starSize;
float starPosition1;
float starPosition2;
color roofColor;

// set background color as violet
void setup() {
  size(500, 500);
  background(70, 50, 255);
// set up variables for position of house and roof
  moonCenter = int(width*.2);
  moonWidth = int(width*.15);
  lawnHeight = int(width*.3);
  houseX1 = int(width*.4);
  houseY1 = int(width*.55);
  houseWidth = int(width*.2);
  houseHeight = houseWidth;
  roofX1 = houseX1;
  roofX2 = int(width*.5);
  roofX3 = int(houseX1+houseWidth);
  roofY1 = houseY1;
  roofY2 = int(roofY1 - int(width*.1));
  roofY3 = houseY1;
  starSize = 25;
  starPosition1 = random(0,1);
  starPosition2 = random(0,1);
  int mouse;
  roofColor = color(random(0, 255), random(0, 255), random(0, 255));
  
}
void draw() {
  background(70, 50, 255);
// set color as yellow 
  fill(255, 204, 0);
  int mouse = mouseX-mouseY;
// create stars
  pushMatrix();
  rectMode(CENTER);
  rotate(radians(mouse));
  rect(0, 0, starSize, starSize);
  popMatrix();
// create one more star! 
  pushMatrix();
  translate(width*starPosition1, height*starPosition2);
  rotate(radians(mouse));
  rect(0, 0, starSize, starSize);
  popMatrix();
//create one more star!
  pushMatrix();
  translate(width*starPosition2, height*starPosition1);
  rotate(radians(mouse));
  rect(0, 0, starSize, starSize);
  popMatrix();
// create moon 
  //ellipse(100, 100, 75, 75);
  rectMode(CORNER);
  ellipse(moonCenter, moonCenter, moonWidth, moonWidth); 
// set color as bright green
  fill(130, 255, 50);
// create lawn (rectangle)
  //rect(0, 350, 500, 150);
  rect(0, int(width-lawnHeight), width, lawnHeight);
// set color to grey
  fill(175);
// create house (square)
  //rect(200, 275, 100, 100);
  rect(houseX1, houseY1, houseWidth, houseHeight);
// set color to red
  fill(255, 0, 0);
//make random color if mouse is pressed
  if (mousePressed){
    fill(roofColor);
  }
// create roof (triangle)
triangle(roofX1, roofY1, roofX2, roofY2, roofX3, roofY3);
  //triangle(200, 275, 250, 225, 300, 275);
  

//one more house!
  pushMatrix();
  translate(width*-.25, height*.25);
  scale(.75);
  //rotate(radians(mouse));
  fill(175);
// create house (square)
  //rect(200, 275, 100, 100);
  rect(houseX1, houseY1, houseWidth, houseHeight);
// set color to red
  fill(255, 0, 0);
  //make random color if mouse is pressed
  if (mousePressed){
    fill(roofColor);
  }
// create roof (triangle)
  //triangle(200, 275, 250, 225, 300, 275);
  triangle(roofX1, roofY1, roofX2, roofY2, roofX3, roofY3);;
  popMatrix();
  
//one more house!
  pushMatrix();
  translate(width*.25, height*.25);
  scale(1.25);
  //rotate(radians(mouse));
  fill(175);
// create house (square)
  //rect(200, 275, 100, 100);
  rect(houseX1, houseY1, houseWidth, houseHeight);
// set color to red
  fill(255, 0, 0);
  //make random color if mouse is pressed
  if (mousePressed){
    fill(roofColor);
  }
// create roof (triangle)
  //triangle(200, 275, 250, 225, 300, 275);
  triangle(roofX1, roofY1, roofX2, roofY2, roofX3, roofY3);;
  popMatrix();
}

// to change size of stars by pressing up/down keys
void keyPressed(){
  if (key == CODED){
    if(keyCode == UP){
      starSize += 1;
    } else if(keyCode == DOWN){
      starSize -= 1;
    }
  }
}
