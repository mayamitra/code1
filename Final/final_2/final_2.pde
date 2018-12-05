float x, y; 
int theta; 
int orbitRadius; 

void setup(){
  size(600, 600); 
}

void draw(){
  theta += 5;
  orbitRadius = 100;
  
  background(0, 100, 200); 

  x = cos(radians(theta))*orbitRadius + mouseX; 
  y = sin(radians(theta))*orbitRadius + mouseY;

  ellipse(x, y, 25, 25); 
}
