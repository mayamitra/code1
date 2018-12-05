float x, y;
float theta = 0;
int radius = 25;

void setup() {
  background(0);
  size(500, 500);
  frameRate(10);
}

void draw() {
  background(0);

  theta += 5;

  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(theta));
  x ++;
  y = (sin(theta)*25) + 200;
  ellipse (x, y, radius, radius);
  popMatrix();

  ellipse(width/2, height/2, 100, 100);
}
