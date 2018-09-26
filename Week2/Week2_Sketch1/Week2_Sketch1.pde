//making an equliateral triangle

float X1, Y1, X2, Y2, X3, Y3;

void setup(){
  size(700, 700);
  X1 = width*.5;
  Y1 = width-width*.5*sqrt(3);
  X2 = 0;
  Y2 = width;
  X3 = width;
  Y3 = width;
}

void draw(){
  triangle(X1, Y1, X2, Y2, X3, Y3);
}
