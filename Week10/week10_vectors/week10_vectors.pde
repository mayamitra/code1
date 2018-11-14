//PVector is a class that's built into processing

PVector position; 
//float x; 
//float y; 
PVector velocity; 
//float xSpeed; 
//float ySpeed; 
float r, g, b; 
int radius; 

void setup() {
  size(500, 500);
  background(0); 

  smooth(); 
  position = new PVector(width/2, height/2);
  //x = width/2; 
  //y = height/2; 

  velocity = new PVector(5, 6);
  //xSpeed = 5; 
  //ySpeed = 6; 

  radius = 100;
}

void draw() {
  fill(0, 10); 
  rect(0, 0, width, height); 

  position.add(velocity);
  //x = x + xSpeed;
  //y = y + ySpeed; 

  //CREATE BOUNDARIES
   if ( position.x>= (width- radius/2) || position.x<= radius/2) {
    velocity.x = velocity.x *-1; //reverses xDirection
  }
  
    if ( position.y >= (height-radius/2) || position.y <= radius/2) {
    velocity.y = velocity.y * -1;
  }

  if ( position.x== (width- radius/2) || position.x== radius/2 ) {
    r = random(0, 255); 
    g = random(0, 255); 
    b = random(0, 255);
  }

  if ( position.y>= (height- radius/2) || position.y<= radius/2 ) {
    r = random(0, 255); 
    g = random(0, 255); 
    b = random(0, 255);
  }

  noStroke();   
  fill(r, g, b); 
  ellipse(position.x, position.y, radius, radius);
}
