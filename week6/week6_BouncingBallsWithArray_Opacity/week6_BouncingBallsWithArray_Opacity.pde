int num = 100;

int [] xPos = new int[num];
int [] yPos = new int[num];

int [] xSpeed = new int[num];
int [] ySpeed = new int[num];

int [] circleSize = new int[num];

//this is a longer way to do it
int [] r = new int[num];
int [] g = new int[num];
int [] b = new int[num];

int [] opacity = new int[num];

void setup() {
  size(500, 500);
  for (int i=0; i<num; i++) {
    opacity[i] = 255;
    //xPos[i] = int(random(0, width));
    //yPos[i] = int(random(0, height));
    xPos[i] = int(random(circleSize[i]/2, width-circleSize[i]/2));
    yPos[i] = int(random(circleSize[i]/2, height-circleSize[i]/2));

    xSpeed[i] = int(random(1, 5));
    ySpeed[i] = int(random(1, 5));

    circleSize[i] = int(random(25, 60));

    r[i] = int(random(0, 255));
    g[i] = int(random(0, 255));
    b[i] = int(random(0, 255));
  }
}

void draw() {
  background(0);

  for (int i=0; i<num; i++) {
    if (xPos[i] >= width-circleSize[i]/2 || xPos[i] <= circleSize[i]/2) {
      xSpeed[i] = xSpeed[i] * -1;
    }
    if (yPos[i] >= height-circleSize[i]/2 || yPos[i] <= circleSize[i]/2) {
      ySpeed[i] = ySpeed[i] * -1;
    }

    xPos[i] = xPos[i] + xSpeed[i];
    yPos[i] = yPos[i] + ySpeed[i];

    if (dist(mouseX, mouseY, xPos[i], yPos[i])<circleSize[i]/2) {
      opacity[i] = 0;
    }

    if (keyPressed) {
      opacity[i] = 255;
    }

    fill(r[i], g[i], b[i], opacity[i]);
    //fill(c[i], c[i], c[i]);
    noStroke();
    ellipse(xPos[i], yPos[i], circleSize[i], circleSize[i]);
  }
}
