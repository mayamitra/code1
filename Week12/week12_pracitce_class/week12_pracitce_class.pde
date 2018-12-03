Square squares[] = new Square [10];

void setup(){
  size(600, 600);
  for (int i=0; i<squares.length; i++){
    squares[i] = new Square();
  }
}

void draw(){
  background(0);
  for (int i=0; i<squares.length; i++){
    squares[i].display();
    squares[i].move();
    
    if (squares[i].position.x>width){
      squares[i].position.x = 0;
    }
  }
}
