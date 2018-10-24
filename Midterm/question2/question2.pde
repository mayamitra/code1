float d; 
float incr = 5;

boolean shrink; 

void setup() {
  size(600, 600);
  d = 100;
}

void draw() {
  background(150);


  if (d>=width) {
    shrink = true;
  }
  
  if (d==0){
    shrink = false;
  }

  if (shrink == true) {
    d = d-incr;
  }
  
  if (shrink == false) {
  d += incr;  
  }

  println(d);
  println(shrink);

  ellipse(width/2, height/2, d, d);
}
