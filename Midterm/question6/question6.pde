void setup() {
  size(600,600);
}

void draw() {
  //int i = 0;
  //while (i < 100) {
  //  line(i * 6, 0, i * 6, height);
  //  i++;
  //}
  
  for (int i = 0; i<width; i++){
    line(i * 6, 0, i * 6, height);
  }
}
