ArrayList <Particle> myParticle;

void setup() {
  size(600, 600); 

  myParticle = new ArrayList<Particle>();
}

void draw() {
  background(0); 

  for (int i=0; i<myParticle.size(); i++) {
    Particle p = myParticle.get(i);
    p.display();
    p.move();
    p.bounce(); 
    
    //to check to see if a particle is still alive, can use .dead() method
    println(p.dead());

    if (p.dead() == true) {
      myParticle.remove(i);
    }
  }
  
  if (frameCount % 30 == 0) {
    myParticle.add(new Particle());
  }
}
