//Single loop in which  size of an ellipse changes based on it's position in the loop (ellipses get larger)
//void setup() {
//  size(500, 500);
//}

//void draw() {
//  background(255);
//  //int numCircles = 50;
//  //int size = width/numCircles;
//  for (int i=10; i<=width; i+=.5*i) {
//    println(i);
//    fill(255);
//    ellipse(i*1.25, height*.5, .5*i, .5*i);
//  }
//}

//Nested loop that uses the map function
void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  //numCircles is the amount of circles there would be if the radius of the circles did NOT increase
  int numCircles = 25;
  int size = width/numCircles;
  for (int i=size/2; i<=width; i+=.5*i) {
    for (int j = size/2; j<=height; j+=height/numCircles) {
      float a = dist(i*1.25, mouseY, i, j);
      int r = int(map(i, 0, width, 0, 255));
      int b = int(map(j, 0, width, 0, 255));
      fill(r, 0, b);
      ellipse(i*1.25, a, .5*i, .5*i);
    }
  }
}
