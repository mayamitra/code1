void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(150);
  for (int i = 0; i < width; i+=60) {
    rect(i+15, 150, 30, 300);
  }
}
