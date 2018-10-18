int num = 10;
int size;
color gridC [][] = new color[num][num];
int speed [][] = new int [num][num];
boolean clicked[][] = new boolean[num][num];

void setup() {
  size(500, 500);
  size = width/num;
  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {
      gridC[i][j] = color(random(100, 255), random(0, 50), random(150, 255));
      speed[i][j] = 0;
    }
  }
  //gridC[0][1] = color(255);
}

void draw() {
  background(0);
  
  //had to change it from (int i=0; i<num; i++) because of the falling thing. Have to be redrawn in opposite order
  for (int i=num-1; i>=0; i--) {
    for (int j=num-1; j>=0; j--) {
      fill(gridC[i][j]);
      if(clicked[i][j]){
        speed[i][j] +=3;
      }
      if (mouseX>i*size && mouseX<=(i+1)*size &&
        mouseY>j*size && mouseY<=(j+1)*size) {
        println("i is: " + i + " j is: " + j); //will print out where in the plane we are
      }
      rect(i*size, (j*size)+speed[i][j], size, size);
    }
  }
}


void mousePressed() {

  //click on a square and it will change color
  //for (int i=0; i<num; i++) {
  //  for (int j=0; j<num; j++) {
  //    if (mouseX>i*size && mouseX<=(i+1)*size &&
  //      mouseY>j*size && mouseY<=(j+1)*size) {
  //      gridC[i][j] = color(random(100, 255), random(0, 50), random(150, 255));
  //      }
  //  }
  //}

  //square will turn black and drop
  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {
      if (mouseX>i*size && mouseX<=(i+1)*size &&
        mouseY>j*size && mouseY<=(j+1)*size) {
        clicked[i][j] = true;
      }
    }
  }
}
