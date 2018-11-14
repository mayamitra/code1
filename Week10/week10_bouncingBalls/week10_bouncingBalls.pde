ArrayList<Particle> particles;

void setup () {
  size(800, 800);
  particles = new ArrayList<Particle>();
}

void draw() {
  background(255);
  for (int i =0; i<particles.size(); i++) {
    // .get method makes sure it gets that exact particle from the array list, 
    //because particles are constantly changing in the array
    Particle p = particles.get(i);
    p.fall();
    p.gravity();
    p.display(25);
    if (p.position.y >= height-(p.size/2)){
      p.bounce();
    }
    
    if(p.position.x >= width-(p.size/2) || p.position.x <= p.size/2){
      p.sideBounce();
    }
    
    if(p.position.y < 0){
      particles.remove(i);
    }
  }
  
  println(particles.size());
}

void mousePressed(){
  particles.add(new Particle());
}
