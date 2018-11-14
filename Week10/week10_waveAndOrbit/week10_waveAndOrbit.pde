//when you're trying to get an orbit, use x as cosine and y as sine
//if you're trying to go between negative and positive values, use cos and sin

PVector position;
float theta = 0;
int orbitSize = 100;
int radius = 50;
int yIncrement = 5;

void setup() {
  background(0);
  size(600, 600);
  position = new PVector(width/2, 0);
}

void draw() {
  background(0);
  theta +=.1;
  //OR theta = frameCount;

  //MOVE IN AN ORBIT:
  //position.x = width/2 + orbitSize*cos(theta);
  //position.y = height/2 + orbitSize*sin(theta);

  //WAVE MOVEMENT LEFT TO RIGHT:
  //position.x ++;
  //position.y = height/2 + orbitSize*sin(theta);

  //WAVE MOVEMENT TOP TO BOTTOM:
  position.x = width/2 + orbitSize*cos(theta);
  position.y ++;
  
  //MAKE IT COME BACK TO THE TOP IF IT GOES PAST (WITH TOP TO BOTTOM)
  //if (position.y >= height){
  //  position.y = 0;
  //}
  
  //MAKE IT BOUNCE UP ONCE IT REACHES THE BOTTOM (WITH TOP TO BOTTOM)
  position.y += yIncrement;
  if ( position.y >= height-(radius/2)){
    yIncrement = -5;
  }
  
  if ( position.y <= radius/2){
   yIncrement = 5; 
  }

  ellipse(position.x, position.y, 50, 50);
}
