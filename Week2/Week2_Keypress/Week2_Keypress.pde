void setup(){
  size(500,500);
}

//  //if any key is pressed, the color of the square changes
//  void draw() {
//  if (keyPressed == true) {
//    fill(0);
//  } else {
//    fill(255);
//  }
//  rect(25, 25, 50, 50);
//}

//if any key is pressed, the color of the square changes and stays that way,  
//because the boolean is not in a loop
int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50, 50);
}

void keyPressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
