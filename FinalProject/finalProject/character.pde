class Character {
  PVector position;

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

  void display() {
    rectMode(CENTER);
    fill(255, 255, 0);
    //head
    rect(position.x, position.y, 26, 26);
    //neck
    rect(position.x, position.y+18, 10, 10);
    //left arm
    rect(position.x-21, position.y+44, 6, 42);
    //right arm
    rect(position.x+21, position.y+44, 6, 42);
    //body
    fill(0, 0, 255);
    rect(position.x, position.y+44, 36, 42);
    //midrif
    fill(150);
    rect(position.x, position.y+68, 36, 6);
    //left leg
    rect(position.x-10, position.y+86, 12, 30);
    //right leg
    rect(position.x+10, position.y+86, 12, 30);
  }
}
