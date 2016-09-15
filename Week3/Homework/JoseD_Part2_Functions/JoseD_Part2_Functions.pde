void setup() {
  int result1 = addFive(55);
  println("the result of calling addFive(55): " + result1);
  
  int result2 = subtractTen(11);
  println("the result of calling subtractTen(11): " + result2);
  
  int result3 = addTwoInts(1, 2);
  print("last result - addTwoInts(1,2): ");
  println(result3);
  
float whatThis = addThisFloat(20.0,45.5);
print("What are these float? ");
println(whatThis);

boolean tellMeTheTruth = yesOrNo(true, false);
print("Will I be rich? ");
println(tellMeTheTruth);


String iloveTe = FindLove("Can you Love me?", "No we can't, I need you");
print("Can we just be friends? ");
println(iloveTe);

color thecolorRed = Rose(0,0,0);
 background(thecolorRed);
}

void draw() {
  
}

//FUNCTION 1
//this function takes an argument and returns that value plus 5.
int addFive(int n) {
  return n + 5;
}

//FUNCTION 2
//this function takes an argument and returns that value minus 10.
int subtractTen(int n) {
  return n - 10;
}

//FUNCTION 3
//this function takes two arguments and returns the result of their addition
int addTwoInts(int n, int x) {
  return n + x;
}

//Function 1 adding two float
float addThisFloat(float k, float l){
  
  return k + l;
  
}
//Function 2 returning the true.
boolean yesOrNo(boolean yes, boolean no){
  
  return yes;
}
//Function 3 returning IHateYou
String FindLove(String ILoveyou, String IHateYou){
  
  return IHateYou;
}

//Function 4 return the both color to mix them.
color Rose(int ThisRed, int ThisGreen, int ThisBlue){
  
ThisRed = #EA0C0C;
ThisGreen =#0DFF6F;
ThisBlue = #0DFF6F;
  return ThisRed + ThisGreen;
  
}