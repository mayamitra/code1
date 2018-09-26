//Drawing of a house on a lawn, with the moon in the background.
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

// set background color as violet
void setup() {
  size(300, 300);
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
  
}
// set color as yellow 
void draw() {
  fill(255, 204, 0);
// create moon 
  //ellipse(100, 100, 75, 75);
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
// create roof (triangle)
  //triangle(200, 275, 250, 225, 300, 275);
  triangle(roofX1, roofY1, roofX2, roofY2, roofX3, roofY3);
}
