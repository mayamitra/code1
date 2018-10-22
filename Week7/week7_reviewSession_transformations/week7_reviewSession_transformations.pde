//transformations: translate, scale, rotate
int r = 0;

void setup() {
  size(500, 500);
}

void draw() {
  rectMode(CENTER);
  background(0);
  pushMatrix();
  translate(width*.5, height*.5);
  //rotate(frameCount/3); 
  r++;
  rotate(r/10);
  rect(0, 0, 50, 50);

  //nested pushMatrix
  pushMatrix();
  translate(-50, -50);
  rotate(frameCount/5);
  rect(0, 0, 40, 40);

  //one more nested pushMatrix
  pushMatrix();
  translate(40, 40);
  rotate(r/2);
  ellipse(0, 0, 10, 10);
  popMatrix();

  popMatrix();

  popMatrix();
}
