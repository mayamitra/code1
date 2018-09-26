int bgColor = 255;
int bgColor2 = 100;
int treePosition;
int treeSize;

void setup() {
  //first parameter is width, second is height
  size(500, 500);
  //we put bgColor instead of the integer it was expecting (255) because we set the integer bgColor as 255 in line 1
  background(bgColor2);
  
  treePosition = int(width*random(0, 1));
  treeSize = int(width*.5);
  
  println(treePosition);
}

void draw() {
  background(bgColor2);
  //moves around screen because treePosition is in the draw function
  treePosition = int(width*random(0, 1));
  //ellipse(x position, y position, width, height)
  //origin (0,0) is at top left of the screen
  //in this ellipse, the center is at (100,100) and radius is 25
  //ellipse draw mode uses the point you put at the center, but that's not always the case
  //fill (0, 100, 100);
  //ellipse(100, 100, 50, 50);
  //fill is (red, yellow, blue)
  //fill(100, 0, 0);
  //rect(100, 100, 100, 50);
  //when you play it, the recatngle is above the circle because you put it after
  
  //changes our rectangle mode so that we start at the center
  rectMode(CENTER);
  fill(150, 100, 50);
  rect(treePosition, treePosition + 50, treeSize*.25, treeSize);
  
  fill(0, 150, 0);
  ellipse(treePosition, treePosition, treeSize, treeSize);
  //because println is in the draw loop, it gets reprinted an infinite number of times
  println(treePosition);
}
