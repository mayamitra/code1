PImage img;

void setup() {
  size(288, 384); //based on dimensions of image
  img = loadImage("image.jpg");
  background(255);
  noStroke();
  frameRate(300); //make the image drawing faster
}

void draw() {
  img.resize(288, 0); //based on dimensions of image
  //image(img, 0, 0);
  //int w = int(random(0, width));
  //int h = int(random(0, height));
  int w = mouseX; //draw it by moving ur mouse
  int h = mouseY;
  color c = img.get(w, h); 

  float b = brightness(c); 
  int f;
  if (b<150) {
    f = 0;
  } else {
    f = 255;
  }
  
  fill(c); //use color from the image in order to draw ellipses in that color
  //fill(b); //makes it black and white instead of colorful
  //fill(f); //makes it straight black and white (not grey scale);
  ellipse(w, h, 10, 10);
}
