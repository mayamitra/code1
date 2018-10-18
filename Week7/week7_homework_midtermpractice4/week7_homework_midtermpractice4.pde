//this sketch should have 10 ellipses spaced evenly across the screen 
//each ellipse should change the background color when it's pressed 

//right now the ellipses are all stacked on top of each other and the last ellipse is drawn
int size = 50; 
int num = 10;
int xPos[] = new int[num]; 
color bgColor[] = new color[num]; 

void setup() {
  size(500, 500); 

  for (int i = 0; i<num; i++) {
    xPos[i] = (size*i)+(size/2);
  }
  
  for (int i = 0; i<num; i++) {
    bgColor[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
}

void draw() {
  for (int i = 0; i<num; i++) {
    ellipse(xPos[i], height/2, size, size);
  }
}

void mousePressed() {
  for (int i = 0; i<num; i++) {
    float dist = dist(mouseX, mouseY, xPos[i], height/2);
    if (dist<=size/2) {
      background(bgColor[i]);
    }
  }
}
