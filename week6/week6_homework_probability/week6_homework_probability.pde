//CREATE AN ARRAY OF STRINGS 
//USE PROBABILITY TO DISPLAY TEXT FROM YOUR STRING ARAY

String myFarm = "My farm has ";
int numAnimals = 5; 
float r[] = new float[numAnimals]; 
String farmAnimals[] = {"cows", "pigs", "goats", "dogs", "ponies"};
String index[] = new String[numAnimals];


//20% chance of each animal being displayed.
void setup() {
  size(600, 600);
  for (int i = 0; i<numAnimals; i++) {
    r[i] = random(0, 1); 
    println(r[i]);
  }
  for (int i = 0; i<numAnimals; i++) {
    if (r[i]<.2) {
      index[i]=farmAnimals[0];// = 0
    }
    if (r[i]>.2 && r[i]<.4) {
      index[i]=farmAnimals[2];
    }
    if (r[i]>.4 && r[i]<.6) {
      index[i]=farmAnimals[3];
    }
    if (r[i]>.6 && r[i]<.8) {
      index[i]=farmAnimals[4];
    }
    if (r[i]>.8 && r[i]<1) {
      index[i]=farmAnimals[4];
    }
  }
}

void draw() {
  for (int i=0; i<numAnimals; i++) {
    text(myFarm, 100, 80);
    text(index[i], 10+(i*50), 100);
  }
}
