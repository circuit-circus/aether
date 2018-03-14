#include <Wire.h>
#include "FastLED.h"

byte ledState = 0;

// Timers
unsigned long activeDurationTimer = 0;
const long activeDurationLength = 60000; // Should always be longer than processingDurationLength
const long processingDurationLength = 15000; // Should always be shorter than activeDurationLength

const int thisArduinoID = 6;
const String thisArduinoIDStr = String(thisArduinoID);

// ID, HUE, no of LEDs ring 1, no of LEDs ring 2, no of LEDs ring 3
constexpr int planets[8][5] = {
  {0, 160, 90, 72, 54}, // 3 rings - m/six - blå
  {1, 215, 92, 90, 90}, // sphere - Circuit Circus - lilla
  {2, 250, 87, 63, 1}, // 2 rings - Mediacom - pink
  {3, 15, 92, 90, 90}, // sphere - Wavemakers - orange
  {4, 195, 90, 72, 54}, // 3 rings - Mindshare - lilla
  {5, 130, 92, 92, 92}, // sphere - Vores egen - tyrkis
  {6, 150, 87, 63, 1}, // 2 rings - GroupM - blå
  {7, 0, 150, 74, 54} // 3 rings - Uno - rød
};


// LED Variables
#define DATA_PIN_ONE 6
const int NUM_LEDS_ONE = planets[thisArduinoID][2];
CRGB stripOne[NUM_LEDS_ONE];

#define DATA_PIN_TWO 4
const int NUM_LEDS_TWO = planets[thisArduinoID][3];
CRGB stripTwo[NUM_LEDS_TWO];

#define DATA_PIN_THREE 2
const int NUM_LEDS_THREE = planets[thisArduinoID][4];
CRGB stripThree[NUM_LEDS_THREE];

#define DATA_PIN_CORE 8
#define NUM_LEDS_CORE 35
CRGB stripCore[NUM_LEDS_CORE];


CHSVPalette16 currentPalette;
TBlendType    currentBlending;

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);

  Serial.println("Initializing LEDs");
  FastLED.addLeds<NEOPIXEL, DATA_PIN_ONE>(stripOne, NUM_LEDS_ONE);
  FastLED.addLeds<NEOPIXEL, DATA_PIN_TWO>(stripTwo, NUM_LEDS_TWO);
  FastLED.addLeds<NEOPIXEL, DATA_PIN_THREE>(stripThree, NUM_LEDS_THREE);
  FastLED.addLeds<NEOPIXEL, DATA_PIN_CORE>(stripCore, NUM_LEDS_CORE);


  Wire.begin(8);                // join i2c bus with address #8
  Wire.onReceive(receiveEvent); // register event
  Serial.begin(9600);           // start serial for output
  
  currentBlending = LINEARBLEND;
}

const long idleTimer = 20000;
void loop() {

  unsigned long currentMillis = millis();

  if (ledState == 2 && currentMillis - activeDurationTimer >= activeDurationLength) {
    ledState = 1;
  }

  // ledState = 2;

  if (ledState == 0) {
    Serial.println("State 0");
    noConnection();
  } else if (ledState == 1) {
    Serial.println("State 1");
    idle();
  } else if (ledState == 2) {
    Serial.println("State 2");
    if(currentMillis - activeDurationTimer < processingDurationLength) { // Start with the processing animation
      processing();
    } else if(currentMillis - activeDurationTimer < activeDurationLength) { // then move on to the active one
      active();
    }
  }
}

void noConnection() {

  currentBlending = LINEARBLEND;
  setPaletteStriped(
    CHSV(planets[thisArduinoID][1], 180, 180),
    CHSV(planets[thisArduinoID][1], 100, 180)
  );

  static uint8_t startIndex = 0;
  startIndex = startIndex + 1;
  FillLEDsFromPaletteColors(startIndex, 3); // Write 0 instead of startIndex and the leds are not animated  

  FastLED.show();
  FastLED.delay(1000 / 100);
  
}

const long snakeDuration = 5000;
void idle() {
  currentBlending = LINEARBLEND;

  setPaletteHueSpectrum(planets[thisArduinoID][1], 30); 

  static uint8_t startIndex = 0;
  startIndex = startIndex + 1;
  FillLEDsFromPaletteColors(startIndex, 3);

  // Make snakes every 5 seconds
  if(millis() % snakeDuration * 2 < snakeDuration) {
    runSnakeAnimation(true);
  }

  FastLED.show();
  FastLED.delay(1000 / 500);
}

void processing() {
  currentBlending = NOBLEND;
  setPaletteStriped(
    CHSV(planets[thisArduinoID][1], 255, 255),
    CHSV(planets[thisArduinoID][1], 10, 255)
  );

  static uint8_t startIndex = 0;
  startIndex = startIndex + 1;
  FillLEDsFromPaletteColors(startIndex, 16 );

  FastLED.show();
  FastLED.delay(1000 / 5000);
}

void active() {
  currentBlending = LINEARBLEND;
  heartbeatPalette(planets[thisArduinoID][1], 5);

  static uint8_t startIndex = 0;
  startIndex = startIndex + 1;
  FillLEDsFromPaletteColors(startIndex, 16);

  FastLED.show();
  FastLED.delay(1000 / 5000);
}

// pixelsPerColor16. If you set it to 16, each color in the palette will fill one pixel. Set it to 8 and it's to LEDs per color, etc.
void FillLEDsFromPaletteColors( uint8_t colorIndex, uint8_t pixelsPerColor16) {
  uint8_t brightness = 255;

  for ( int i = 0; i < NUM_LEDS_ONE; i++) {
    stripOne[i] = ColorFromPalette( currentPalette, colorIndex, brightness, currentBlending);
    colorIndex += pixelsPerColor16;
  }

  for ( int i = 0; i < NUM_LEDS_TWO; i++) {
    stripTwo[i] = ColorFromPalette( currentPalette, colorIndex, brightness, currentBlending);
    colorIndex += pixelsPerColor16;
  }

  for ( int i = 0; i < NUM_LEDS_THREE; i++) {
    stripThree[i] = ColorFromPalette( currentPalette, colorIndex, brightness, currentBlending);
    colorIndex += pixelsPerColor16;
  }

  for ( int i = 0; i < NUM_LEDS_CORE; i++) {
    stripCore[i] = ColorFromPalette( currentPalette, colorIndex, brightness, currentBlending);
    colorIndex += pixelsPerColor16;
  }
}


// function that executes whenever data is received from master
// this function is registered as an event, see setup()
void receiveEvent(int howMany) {
  int x = Wire.read();    // receive byte as an integer

  if (x == 0) { // No connection
    ledState = 0;
  } else if (x == 1) { // Connection, not activated
    ledState = 1;
  } else if (x == 2) { // Activated
    ledState = 2;
    activeDurationTimer = millis();
  }
}


// Takes a hue and makes a gradient from that, with variation to both sides
CHSVPalette16 setPaletteHueSpectrum(byte hue, byte satVariation) {
  byte baseSat = 255 - satVariation;
  byte baseHueVariation = 10;
  currentPalette = CHSVPalette16(
    CHSV(hue + baseHueVariation, baseSat - satVariation, 255),
    CHSV(hue - baseHueVariation, baseSat, 255),
    CHSV(hue + baseHueVariation, baseSat + satVariation, 255),
    CHSV(hue - baseHueVariation, baseSat, 255),
    CHSV(hue + baseHueVariation, baseSat - satVariation, 255),
    CHSV(hue - baseHueVariation, baseSat, 255),
    CHSV(hue + baseHueVariation, baseSat + satVariation, 255),
    CHSV(hue - baseHueVariation, baseSat, 255),
    CHSV(hue + baseHueVariation, baseSat - satVariation, 255),
    CHSV(hue - baseHueVariation, baseSat, 255),
    CHSV(hue + baseHueVariation, baseSat + satVariation, 255),
    CHSV(hue - baseHueVariation, baseSat, 255),
    CHSV(hue + baseHueVariation, baseSat - satVariation, 255),
    CHSV(hue - baseHueVariation, baseSat, 255),
    CHSV(hue + baseHueVariation, baseSat - satVariation, 255),
    CHSV(hue - baseHueVariation, baseSat, 255)
  );
}

int fadeVal = 0;
bool shouldCountUp = false;
CHSVPalette16 heartbeatPalette(byte hue, int fadeSpeed) {
  byte baseHueVariation = 10;

  if(shouldCountUp) {
    fadeVal += fadeSpeed;
  }
  else {
    fadeVal -= fadeSpeed * 3;
  }

  if(fadeVal > 255) {
    fadeVal = 255;
    shouldCountUp = false;
  }
  else if(fadeVal < 0) {
    fadeVal = 0;
    shouldCountUp = true;
  }

  currentPalette = CHSVPalette16(
    CHSV(hue + baseHueVariation, fadeVal, 255),
    CHSV(hue - baseHueVariation, fadeVal, 255)
  );
}

// Goes through all the colors of the planets
CHSVPalette16 testPalette() {
  currentPalette = CHSVPalette16(
    CHSV(planets[0][1], 255, 255),
    CHSV(planets[0][1], 255, 255),
    CHSV(planets[1][1], 255, 255),
    CHSV(planets[1][1], 255, 255),
    CHSV(planets[2][1], 255, 255),
    CHSV(planets[2][1], 255, 255),
    CHSV(planets[3][1], 255, 255),
    CHSV(planets[3][1], 255, 255),
    CHSV(planets[4][1], 255, 255),
    CHSV(planets[4][1], 255, 255),
    CHSV(planets[5][1], 255, 255),
    CHSV(planets[5][1], 255, 255),
    CHSV(planets[6][1], 255, 255),
    CHSV(planets[6][1], 255, 255),
    CHSV(planets[7][1], 255, 255),
    CHSV(planets[7][1], 255, 255)
  );
}


CHSVPalette16 setPaletteFromToSnake(byte startHue, byte endHue) {
  currentPalette = CHSVPalette16(
    CHSV(startHue, 255, 255),
    CHSV(endHue, 255, 255)
  );
}

CHSVPalette16 setPaletteStriped(CHSV color1, CHSV color2) {
  currentPalette = CHSVPalette16(
    color1,
    color2,
    color1,
    color2,
    color1,
    color2,
    color1,
    color2,
    color1,
    color2,
    color1,
    color2,
    color1,
    color2,
    color1,
    color2
  );
}

int indices[4] = {20, 45, 67, 0};
int snakeDirections[4] = {+1, +1, +1, +1};
long snakeTimer = 0;
const long snakeTimerLength = 50;
void determineNextIndex(CRGB leds, int num_leds, int index, bool shouldLoop) {
  // Figure out what the index should be
  if(indices[index] <= 0) {
    if(snakeDirections[index] == -1) {
      if(shouldLoop == true) {
        indices[index] = num_leds;
      }
      else {
        snakeDirections[index] = +1;
        indices[index] = 0;
      }
    }
  }
  if(indices[index] >= num_leds) {
    if(snakeDirections[index] == +1) {
      if(shouldLoop == true) {
        indices[index] = 0;
      }
      else {
        snakeDirections[index] = -1;
        indices[index] = num_leds;
      }
    }
  }
  indices[index] += snakeDirections[index];
}

void runSnakeAnimation(bool shouldLoop) {
  determineNextIndex(stripOne, NUM_LEDS_ONE, 0, shouldLoop);
  determineNextIndex(stripTwo, NUM_LEDS_TWO, 1, shouldLoop);
  determineNextIndex(stripThree, NUM_LEDS_THREE, 2, shouldLoop);
  determineNextIndex(stripCore, NUM_LEDS_CORE, 3, shouldLoop);

  stripOne[indices[0]] = CHSV(planets[thisArduinoID][1], 100, 255);
  stripTwo[indices[1]] = CHSV(planets[thisArduinoID][1], 100, 255);
  stripThree[indices[2]] = CHSV(planets[thisArduinoID][1], 100, 255);
  stripCore[indices[3]] = CHSV(planets[thisArduinoID][1], 100, 255);
}
