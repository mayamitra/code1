class Person {
  //data
  float headCenterX;
  float headCenterY;
  float personHeight;
  
  PVector position;
  PVector velocity;
  
  //constructor
  Person(float _headCenterX, float _headCenterY) {
    headCenterX = _headCenterX;
    headCenterY = _headCenterY;
    //personHeight = _personHeight;
    
    position = new PVector (mouseX, mouseY);
    velocity = new PVector(random(1.5, 3), 0);
  }

  //methods
  void move() {
    position.add(velocity);
  }
  
  void display(float personHeight) {
  fill(0);
  //head
  ellipse(headCenterX, headCenterY, 20, 20);
  //body
  line(headCenterX, headCenterY, headCenterX, headCenterY+personHeight);
  //arms
  line(headCenterX-20, headCenterY+(personHeight/2), headCenterX+20, headCenterY+(personHeight/2));
  //legs
  line(headCenterX, headCenterY+personHeight, headCenterX-20, headCenterY+personHeight+20);
  line(headCenterX, headCenterY+personHeight, headCenterX+20, headCenterY+personHeight+20);
}

void walk(){
  headCenterX+= velocity.x;
}

}
