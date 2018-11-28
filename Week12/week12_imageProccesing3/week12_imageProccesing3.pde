PImage img;
int pixelSize = 1;
int cols, rows;

void setup() {
  size(640, 507, P3D); //lets processing know we're working with 3D
  img = loadImage("StarryNight.jpg");

  cols = width/pixelSize;
  rows = height/pixelSize;
}

void draw() {
  img.resize(640, 0);
  background(0);

  loadPixels();

  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      int x = i*pixelSize + (pixelSize/2);
      int y = j*pixelSize + (pixelSize/2);

      int loc = x + y*width;
      color c = img.pixels[loc];

      float z = (mouseX/(float(width)))*brightness(img.pixels[loc]);

      fill(c);

      pushMatrix();
      translate(x, y, z);
      noStroke();
      rectMode(CENTER);
      rect(0, 0, pixelSize, pixelSize);
      popMatrix();
    }
  }
}
