// function ex: rect(), void draw(), etc.
// return type is value that is returned by the function. If no value is returned,
// use a void funtcion. 

//ex1:
//String returnAString(String string){
//  String a = string;
//  return a;

//} 

////Function call 
//void draw(){
//String s = returnAString("I am a string. ");
//String t = returnAString ("This is a new string.");
//println(s+"\n"+t);
//// println(s+t);
//}

//ex2: does the same as the one above
void returnAString(String string1, String string2){
  println(string1 + "\n" + string2);
} 

void draw(){
//String s = returnAString("I am a string. ");
//String t = returnAString ("This is a new string.");
//println(s+"\n"+t);
  returnAString("I am a string", "I am another string");
}
