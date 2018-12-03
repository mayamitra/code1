PVector position;
float theta = 0;
int orbitSize = 25;
int radius = 25;
int yIncrement = 5;

void setup() {
  background(0);
  size(500, 500);
  position = new PVector(100, 0);
}

void draw() {
  background(0);
  ellipse(width/2, height/2, 50, 50);

  theta += .1;
  pushMatrix();
  translate(width/2, height/2);
  rotate(theta);
  position.x ++;
  position.y = 100 + orbitSize*sin(theta);

  ellipse (position.x, position.y, radius, radius);
  popMatrix();
}
