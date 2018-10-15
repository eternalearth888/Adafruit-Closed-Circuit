// Connecting Arduino to Processing : https://learn.sparkfun.com/tutorials/connecting-arduino-to-processing/all
// Author : Maria Deslis

import processing.serial.*;

Serial myPort; // Create object from Serial class
char val;     // Data received from the serial port

void setup()
{
  size(200,200);
  background(255);
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  noStroke();
  //println("Serial length: ", Serial.list().length);
  //for(int i = 0; i < Serial.list().length; i++) {
  //  println("i :", i," PORT#: ", Serial.list()[i]);
  //}
  
  if ( myPort.available() > 0) 
  {  
    // If data is available,
    val = myPort.readChar();         // read it and store it in val
  } 
 
  switch(val) {
    case '6':
      drawBlankScreen();
      println("Zero: " + val);
      break;
    case '0':
      println("One: " + val);
      drawGreenCircle();
      break;
    case '2':
      println("Two: " + val);
      drawBlueCircle();
      break;
    case '3':
      println("Three: " + val);
      drawRedCircle();
      break;
    case '4':
      println("Four: " + val);
      break;
    case '5':
      println("Five: " + val);
      break;
  }
}

void drawRedCircle() {
  fill(255, 0, 0);
  ellipse(width/2, height/2, 100, 100); 
}

void drawGreenCircle() {
  fill(0,255,0);
  ellipse(width/2, height/2, 100, 100);
}

void drawBlueCircle() {
 fill(0,0,255);
 ellipse(width/2, height/2, 100, 100);
}

void drawBlankScreen() {
  fill(255);
  rect(0,0,width,height);
}
