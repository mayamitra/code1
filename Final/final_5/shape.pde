class Shape{
  float x, y; 
  float size; 
  
  Shape(float _x, float _y){
    x = _x; 
    y = _y; 
    size = random(40, 80);
    
  }
  
  void display(){    
    ellipse(x, y, size, size);  
    triangle(x, y-size/2, x+size/3, y+size/3, x-size/3, y+size/3); 
  }
}
