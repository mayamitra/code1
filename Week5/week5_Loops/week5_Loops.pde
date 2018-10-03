void setup() {
  size(600, 600);

  //SPACES THE CIRCLES RANDOMLY
  //for (int i=0; i<=60; i++) {
  //  fill(map(i, 0, 60, 0, 255));
  //  int r = int(random(10, 20));
  //  ellipse(i*r, height*.25, 10, 10);
  //}
}

void draw() {
  //GOOD FOR SET NUMBER OF LOOPS/OBJECTS YOU WANT TO DRAW
  //for(int i=0; i<=60; i++){
  //  fill(map(i, 0, 60, 0, 255));
  //  ellipse(i*10, height*.25, 10, 10);
  //}

  //SPACES CIRCLES RANDOMLY AND KEEPS REDRAWING THEM 
  background(255);
  for (int i=0; i<=60; i++) {
    fill(map(i, 0, 60, 0, 255));
    int r = int(random(10, 20));
    ellipse(i*r, height*.25, 10, 10);
  }

  //BASED ON WIDTH/HEIGHT OF SCREEN
  //So if you change the size of your screen, it still works
  for (int i=0; i<=width; i+=10) {
    int c = int(map(i, 0, width, 0, 255));
    fill(50, c, c);
    ellipse(i, height*.5, 10, 10);
  }

  //BASED ON SIZE OF CIRCLE AND HEIGHT/WIDTH OF SCREEN 
  //So if you want to change the size of your circle, you only chnage the size variable
  int size = 60;
  for (int i=0; i<=width; i+=size) {
    fill(255);
    ellipse(i, height*.75, size, size);
  }
}
