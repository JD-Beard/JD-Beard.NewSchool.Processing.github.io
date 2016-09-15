

/*5 Side Effect ONLY FUNCTIONS:
 (1) Fill() - changes the fill color of shape drawing primitives.
 only a side effect, no return value
 takes different kinds of arguments for color
 used below on line 28
 (2)stroke() - Add a sets the color used to draw lines and borders around shapes. no return value.
 (3) background() -  sets the color used for the background of the Processing window,  no return value
 takes different kinds of arguments for color.
 (4)text() - Draws text to the screen. Displays the information specified in the first parameter on the screen in the position specified by the additional parameters. no return value
 (5)size() -  dimension of the display window width and height in units of pixels, no return value. takes argument of numbers to give size to the processing window.
 
 
 
 
 5 FUNCTIONS WITH RETURN VALUES:
 
 (1) abs() - returns a float or an integer
 the returned value is the absolute value of the argument
 used below on line 24-25
 
 (2)log() - return a float.
 (3)get() - return a integer or a PImage
 (4)millis() - return an integer number in milliseconds since starting the program. 
 (5)day() - return an integer number with the processing cummunicates with the clock on your computer.
 
 */


void setup() {
  size(200, 200); // window size
  background(0); // color of background
  text("Hello Everyone", 70, 50); // text on the screen
  //calling abs() function  and assigning return valus to absResult
  int absResult = abs(-838);
  println(absResult);
  // calling log() function and assigning a return value to logR
  float logR = log(100.0); 
  println(logR);

  //calling the get() function and assigning a return value to getInto
  int getInto = get(99, 0);
  println(getInto);
  // calling the millis() function and assigning a return value to clockTime
  int clockTime = millis();
  println(clockTime);

  //calling the day() function and assignment a return value in the days of the week.
  int Monday, Tuesday, Wednesday, Thursday, Friday = day();
  //Was messing around to see if I could make it count the days but didn't work lol. Next time.
  //Monday = 1;
  //Tuesday = 2;
  //Wednesday = 3;
  //Thursday = 4;          
  //Friday = 5;

  println(random(0, Friday));



  //calling fill() Function
  stroke(10);
  fill(random(255));
  ellipse(width/2, height/2, 100, 100);
}


void draw() {
}