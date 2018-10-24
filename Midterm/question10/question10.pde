int rectWidth;
int rectHeight;

void setup() {
  size(600, 600);
  background(50);
  rectMode(CENTER);
  fill(0);
  rectWidth = 400;
  rectHeight = 200;
  rect(width/2, height/2, rectWidth, rectHeight);
}

void draw() {
  float x = random((width/2)-(rectWidth/2), (width/2)+(rectWidth/2));
  float y = random((height/2)-(rectHeight/2), (height/2)+(rectHeight/2));
  stroke(255);
  point(x, y);
}
