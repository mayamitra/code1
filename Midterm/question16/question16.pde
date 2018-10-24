float pos [] = new float [600];

void setup() {
  size(600, 600);
  for (int i = 0; i < 600; i+=6) {
    pos[i] = i;
  }
}

  void draw() {
    background(240);
    for (int i = 0; i < 600; i+=6) {
      ellipse(width/2, pos[i], 50, 50);
    }
  }
