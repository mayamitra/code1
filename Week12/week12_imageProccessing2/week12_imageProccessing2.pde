PImage img;

void setup() {
  size(288, 384); //based on dimensions of image
  img = loadImage("image.jpg");
  background(255);
}

void draw() {
  img.resize(288, 0); //based on dimensions of image
  
  //need 2D for loop because pixels are stored in a 1D matrix
  for (int i = 0; i<img.width; i++) {
    for (int j = 0; j<img.height; j++) {
      int pos = i + j*img.width; 

      if (brightness(img.pixels[pos]) < 150) {
        img.pixels[pos] = color(0);
      } else {
        img.pixels[pos] = color(255);
      }
    }
  }
  
  img.updatePixels(); //update pixels based on conditional 
  image(img, 0, 0);
}
