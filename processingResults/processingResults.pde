// Connecting Arduino to Processing : https://learn.sparkfun.com/tutorials/connecting-arduino-to-processing/all
// Author : Maria Deslis

import processing.serial.*;

Serial myPort; // Create object from Serial class
String val;     // Data received from the serial port

void setup()
{
  size(500,500);
  background(255);
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  println("setup portName: ", portName);
  myPort = new Serial(this, portName, 9600);
  println("myPort: ", myPort);
}

void draw() {
  println("Serial length: ", Serial.list().length);
  for(int i = 0; i < Serial.list().length; i++) {
    println("i :", i," PORT#: ", Serial.list()[i]);
  }
  
  if (mousePressed == true) 
  {                           //if we clicked in the window
   myPort.write('1');         //send a 1
   println("1");   
  } 
  else 
  {                           //otherwise
    myPort.write('0');          //send a 0
  }   
}
