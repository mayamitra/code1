//CREATE AN ARRAY OF STRINGS 
//USE PROBABILITY TO DISPLAY TEXT FROM YOUR STRING ARAY

String myFarm = "My farm has ";
String farmAnimals[] = {" ", "cows", "pigs", "goats", "dogs", "ponies"};


//20% chance of each animal being displayed.
void setup() {
  float r = random(0, 1);
  for (int i=0; i<1; i+=r) {
    println(myFarm); 

    if (r<.2) {
      i=1;
    }
    if (r>.2 && r<.4) {
      i=2;
    }
    if (r>.4 && r<.6) {
      i=3;
    }
    if (r>.6 && r<.8) {
      i=4;
    }
    if (r>.8 && r<1) {
      i=5;
    }
    println(farmAnimals[i]);
  }
}

void draw() {
}
