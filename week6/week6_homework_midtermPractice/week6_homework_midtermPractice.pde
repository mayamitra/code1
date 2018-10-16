//change this sketch so it rotates around the original position of the shape 

void setup() {
  size(600, 600); 
  rectMode(CENTER); 
}

void draw(){
  int mouse = mouseX, mouseY;
  background(150);
  //rect(width/2, height/2, 100, 100); 
  
  pushMatrix(); 
  fill(255);
  translate(width*.5, height*.5);
  rotate(radians(mouse)); 
  rect(0, 0, 100, 100); 
  popMatrix(); 
}
