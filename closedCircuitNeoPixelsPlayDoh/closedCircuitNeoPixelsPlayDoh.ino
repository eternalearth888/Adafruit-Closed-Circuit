#include <Adafruit_NeoPixel.h>

#define PIN 0
const int pixel_length = 10; //variable for number of LEDs in the neopixel strip

Adafruit_NeoPixel strip = Adafruit_NeoPixel(pixel_length, PIN, NEO_GRB + NEO_KHZ800); //define neopixel strip

int a0_val = 0; //variable that updates from analog reading pin A0
int a0_min = 0; //minimum a0 cut off value
int a0_max = 4095; //maximum a0 cut off value

int a1_val = 0; //variable that updates from analog reading pin A0
int a1_min = 0; //minimum a0 cut off value
int a1_max = 4095; //maximum a0 cut off value

//int a2_val = 0; //variable that updates from analog reading pin A0
//int a2_min = 0; //minimum a0 cut off value
//int a2_max = 4095; //maximum a0 cut off value

int a3_val = 0; //variable that updates from analog reading pin A0
int a3_min = 0; //minimum a0 cut off value
int a3_max = 4095; //maximum a0 cut off value

int a4_val = 0; //variable that updates from analog reading pin A0
int a4_min = 0; //minimum a0 cut off value
int a4_max = 4095; //maximum a0 cut off value

// booleans part 1
bool a0_chosen = false;
bool a1_chosen = false;
bool a2_chosen = false;
bool a3_chosen = false;
bool a4_chosen = false;

// booleans part 2
bool a0_first  = false;
bool a1_first = false;
bool a2_first = false;
bool a3_first = false;
bool a4_first = false;

void setup() {
  analogReadResolution(12); //set analog read resolution of the microcontroller to 12 bits
  strip.begin(); // start the neopixel strip
  strip.setBrightness(10);
  strip.show(); // Initialize all pixels to 'off'
  Serial.begin(9600); //start serial communication
}

void loop() {
  a0_val = (a0_val + analogRead(A0)) / 2; //we analog read a0, add it to itself, and average it to smooth the signal (slightly)
  int led_count = map(a0_val, a0_min, a0_max, 0, pixel_length); //maps a0_val between min and max to the number of LEDs to light up
  int step_size = (a0_max - a0_min)/pixel_length; //find the a0 value interval between each LED to light

  a1_val = (a1_val + analogRead(A1)) / 2; //we analog read a0, add it to itself, and average it to smooth the signal (slightly)
  int led_count1 = map(a1_val, a1_min, a1_max, 0, pixel_length); //maps a0_val between min and max to the number of LEDs to light up
  int step_size1 = (a1_max - a1_min)/pixel_length; //find the a0 value interval between each LED to light

//  a2_val = (a2_val + analogRead(A2)) / 2; //we analog read a0, add it to itself, and average it to smooth the signal (slightly)
//  int led_count2 = map(a2_val, a2_min, a2_max, 0, pixel_length); //maps a0_val between min and max to the number of LEDs to light up
//  int step_size2 = (a2_max - a2_min)/pixel_length; //find the a0 value interval between each LED to light


  a3_val = (a3_val + analogRead(A3)) / 2; //we analog read a0, add it to itself, and average it to smooth the signal (slightly)
  int led_count3 = map(a3_val, a3_min, a3_max, 0, pixel_length); //maps a0_val between min and max to the number of LEDs to light up
  int step_size3 = (a3_max - a3_min)/pixel_length; //find the a0 value interval between each LED to light

  // Get a4_val
  a4_val = (a4_val + analogRead(A4)) / 2; //we analog read a0, add it to itself, and average it to smooth the signal (slightly)
  int led_count4 = map(a4_val, a4_min, a4_max, 0, pixel_length); //maps a0_val between min and max to the number of LEDs to light up
  int step_size4 = (a4_max - a4_min)/pixel_length; //find the a0 value interval between each LED to light

//  Serial.print("A0: ");
//  Serial.println(a0_val);
//   Serial.print("A1: ");
//  Serial.println(a1_val);
////  Serial.print("A2: ");
////  Serial.println(a2_val);  
//  Serial.print("A3: ");
//  Serial.println(a3_val);
//  Serial.print("A4: ");
//  Serial.println(a4_val);


  //0 to 9, 0 being the first pixel in the list
  for (uint16_t i = 0; i < strip.numPixels(); i++) { //iterate through all the LEDs in the neopixel strip
    // A0
//    Serial.println(a0_first);
    if (a0_val < 3000) {
      // blood clot is red when only it is lit
      Serial.println('0');
      strip.setPixelColor(i,255,0,0);
      a0_chosen = true;
      a0_first = true;
    } else {
        strip.setPixelColor(i,0,0,0);
    }
//    } else if (a1_val < 2000) {
//      // A1 blue
//      Serial.println('1');
//      strip.setPixelColor(i,0,0,255);
//      a1_chosen = true;
//      a1_first = true;
//    } else if (a3_val < 3200) {
//      // A3 green
//      Serial.println('3');
//      strip.setPixelColor(i,0,255,0);
//      a3_chosen = true;
//      a3_first = true;
//    } else  if (a4_val < 4000) {
//      // A4 yellow
//      Serial.println('4');
//      strip.setPixelColor(i,255,255,0);
//      a4_chosen = true;
//      a4_first = true;
//    }
    
    // A2
// else if (a2_val < 4000) {
//     // brain tumor disk is purple
//     Serial.println('2');
//     strip.setPixelColor(i,186,85,211);
//     a2Removed = true;
//      if (!a2Removed) {
//        a2Removed = true;
//      }
//  } 
    
    // if they are all connected, turn them off
    if (a0_val > 4000 && a1_val > 4000 &&  a3_val > 4000 && a4_val > 4000)
    {
        Serial.println('6');
        strip.setPixelColor(i,0,0,0);
    } 

  }
  strip.show(); //update the strip colors
  delay(200); 
}
