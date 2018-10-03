void setup() {

  //EXAMPLE OF A WHILE LOOP
  int index = 10;
  while (index>0) {
    println(index);
    index--;
  }

  //EXAMPLE OF A FOR LOOP
  for (int i = 0; i<10; i++){
    println(i);
  }
  
  //EXAMPLE OF A SLIGHTLY MORE COMPLEX FOR LOOP
  for (int i = 0; i<105; i+=5) {
    for (int j = 0; j<105; j+=5) {
      println("for loop: i is " + i + " j is " + j);
    }
  }
}
