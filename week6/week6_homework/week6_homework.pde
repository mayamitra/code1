//CREATE AN ARRAY TO STORE THE POSITION OF MULTIPLE SHAPES (5+)
//ASSIGN VALUES TO YOUR POSITION ARRAY USING A FOR LOOP


int num = 6;
int [] wPositions = new int[num];
int [] hPositions = new int[num];

void setup() {
  size(500, 500);
  
  for (int i=0; i<num; i++) {
    wPositions[i] = int(random(60, width-60));
    hPositions[i] = int(random(60, height-60));
  }
}

void draw() {
  fill(0);
  text("So many shapes!", 200, 50);
  for (int i=0; i<num; i++) {
    noStroke();
    smallSquare(wPositions[0], hPositions[0]); 
    smallCircle(wPositions[1], hPositions[1]); 
    smallRectangle(wPositions[2], hPositions[2]);
    house(wPositions[3], hPositions[3], 60, 60);
    smallTriangle(wPositions[4], hPositions[4]);
    diamond(wPositions[5], hPositions[5]);
  }
}

//FUNCTIONS THAT DRAW SHAPES

void smallSquare(int x, int y) {
  fill(255);
  rect(x, y, 50, 50);
}

void smallRectangle(int x, int y) {
  fill(0, 0, 200);
  rect(x, y, 30, 100);
}

void smallCircle(int x, int y) {
  fill(30, 50, 0);
  ellipse(x, y, 70, 70);
}

void smallTriangle(int x1, int y1) {
  fill(70, 30, 100);
  triangle(x1, y1, x1+30, y1-(30*sqrt(3)), x1+60, y1);
}

void diamond(int x1, int y1) {
  fill(30, 50, 100);
  triangle(x1, y1, x1+30, y1-(30*sqrt(3)), x1+60, y1); 
  triangle(x1, y1, x1+30, y1+(30*sqrt(3)), x1+60, y1);
}

void house(int x1, int y1, int houseWidth, int houseHeight) {
  fill(100, 100, 100);
  rect(x1, y1, houseWidth, houseHeight);
  fill(255);
  rectMode(CENTER);
  rect(x1+(houseWidth/2), y1+(houseHeight*.75), houseWidth/3, houseHeight*.5);
  rectMode(CORNER);
  fill(255, 0, 0);
  triangle(x1, y1, x1+(houseWidth/2), y1-(houseHeight/2), x1+houseWidth, y1);
}
