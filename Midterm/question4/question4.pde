int size = 200;
int x, y;
float dist;

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  x = width/2;
  y = height/2;
  
  dist = dist(mouseX, mouseY, x, y); 
  
  if (mousePressed && dist<=size/2) {
    fill(255);
  } else {
    fill(150);
  }
  
  ellipse(x, y, size, size);
}
