void setup() {
  size(500,500);
  rectMode(CENTER);
  int mouse;
}

void draw(){
  //redraw background in draw loop so that when you rotate the square, the rectangles 
  //don't get redrawn
  background(250);
  int mouse = mouseX, mouseY;
  //transition our coordinate plane from (0,0) to the bottom left of the screen, 
  //moving the rectangles
  pushMatrix();
  //println(mouseX);
  //println(mouseY);
  fill(255);
  translate(width*.75, height*.75);
  //the position of your mouse acts as the angle
  rotate(radians(mouse));
  rect(0, 0, 100, 100);
  //move the coordinate back to origin with popMatrix. 
  //Always need to have a pushMatrix in order to use a popMatrix, and vice versa
  popMatrix();
  
  pushMatrix();
  fill(255, 0, 0);
  translate(width*.25, height*.25);
  //rotate is in radians. To put it in degrees do rotate(radians(DEGREE AMT));
  rotate(radians(mouse));
  rect(0, 0, 100, 100);
  fill(0);
  ellipse(0, 0, 50, 50);
  popMatrix();
}
