class Character {
  PVector position;
  int colorR;
  int colorG;
  int colorB;
  color shirt;

  //CONSTRUCTOR
  Character(PVector _position) {
    position = _position;
  }

  //METHODS

  void up1() {
    //position.y = mouseY;
    if (keyPressed == true) {
      if (key == 'W' || key == 'w') {
        position.y -= 5;
      }
    }
  }

  void down1() {
    if (keyPressed == true) {
      if (key == 'S' || key == 's') {
        position.y += 5;
      }
    }
  }
  void up2() {
    //position.y = mouseY;
    if (keyPressed == true) {
      if (key == CODED) {
        if (keyCode == UP) {
          position.y -= 5;
        }
      }
    }
  }

  void down2() {
    if (keyPressed == true) {
      if (key ==CODED) {
        if (keyCode == DOWN) {
          position.y += 5;
        }
      }
    }
  }
  
  void shirtChange(){
    colorR = 255;
    colorG = 0;
    colorB = 0;
  }

  void display(color shirt) {  
    colorR = 0;
    colorG = 0;
    colorB = 255;
    
    //put parameter for shirt color and change variable whenever it's hit
    rectMode(CENTER);  
    fill(0, 255, 0);
    //head
    ellipse(position.x, position.y, 30, 35);
    //neck
    rect(position.x, position.y+18, 10, 10);
    //left arm
    rect(position.x-21, position.y+44, 6, 42);
    //right arm
    rect(position.x+21, position.y+44, 6, 42);
    //body
    //fill(0, 0, 255);
    fill(colorR, colorG, colorB);
    //fill(shirt);
    rect(position.x, position.y+44, 36, 42);
    //midrif
    fill(150);
    rect(position.x, position.y+68, 36, 6);
    //left leg
    rect(position.x-10, position.y+86, 12, 30);
    //right leg
    rect(position.x+10, position.y+86, 12, 30);
    fill(0, 255, 0);
    //left foot
    ellipse(position.x-10, position.y+104, 16, 6);
    //right foot
    ellipse(position.x+10, position.y+104, 16, 6);
    fill(0);
    //left eye
    ellipse(position.x-7, position.y, 8, 8);
    //right eye
    ellipse(position.x+7, position.y, 8, 8);
  }
}
