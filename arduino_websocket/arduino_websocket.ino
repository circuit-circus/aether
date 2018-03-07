#include <ArduinoHttpClient.h>
#include <WiFi101.h>
#include "config.h"
#include <AetherLED.h>

// Adress and port of the Raspberry Pi with the Node Server on
char serverAddress[] = "192.168.43.252";
int port = 8080;

// ID of this device
int thisArduinoID = 2 ;
String thisArduinoIDStr = String(thisArduinoID);
bool hasSentID = false;

WiFiClient wifi;
WebSocketClient client = WebSocketClient(wifi, serverAddress, port);
int status = WL_IDLE_STATUS;

bool shouldRunAnimation = false;
unsigned long beginLEDsMillis = 0;        // will store last time LED was updated
const long durationLEDs = 5000;           // interval at which to blink (milliseconds)

byte planetHues[8] = {
  160, // M/six
  224, // Mediacom
  160, // GroupM
  32, // Wavemakers
  192, // Mindshares
  96, // JSPR-92
  64, // NN-05
  0 // VSOVS-io 8
};

// LED Variables
#define DATA_PIN_CORE 12
#define NUM_LEDS_CORE 31
AetherLED<DATA_PIN_CORE, NUM_LEDS_CORE> core;
CHSV ledColorCore = CHSV(planetHues[thisArduinoID], 255, 255);

#define DATA_PIN_ONE 6
#define NUM_LEDS_ONE 90
AetherLED<DATA_PIN_ONE, NUM_LEDS_ONE> ringOne;
CHSV ledColorOne = CHSV(planetHues[thisArduinoID], 255, 255);

#define DATA_PIN_TWO 8
#define NUM_LEDS_TWO 90
AetherLED<DATA_PIN_TWO, NUM_LEDS_TWO> ringTwo;
CHSV ledColorTwo = CHSV(planetHues[thisArduinoID], 255, 255);

#define DATA_PIN_THREE 10
#define NUM_LEDS_THREE 90
AetherLED<DATA_PIN_THREE, NUM_LEDS_THREE> ringThree;
CHSV ledColorThree = CHSV(planetHues[thisArduinoID], 255, 255);

void setup() {
  Serial.begin(9600);

  pinMode(LED_BUILTIN, OUTPUT);

  Serial.println("Initializing LEDs");
  core.attach();
  core.setSnakeSpeed(500);
  core.setBackgroundColor(CHSV(ledColorCore.hue, 120, ledColorCore.value));
  core.setSnakeDirection(+1);

  ringOne.attach();
  ringOne.setSnakeSpeed(30);
  ringOne.setBackgroundColor(CHSV(ledColorOne.hue, 120, ledColorOne.value));
  ringOne.setSnakeIndex(0);
  ringOne.setSnakeDirection(+1);

  ringTwo.attach();
  ringTwo.setSnakeSpeed(30);
  ringTwo.setBackgroundColor(CHSV(ledColorTwo.hue, 120, ledColorTwo.value));
  ringTwo.setSnakeIndex(0);
  ringTwo.setSnakeDirection(-1);

  ringThree.attach();
  ringThree.setSnakeSpeed(30);
  ringThree.setBackgroundColor(CHSV(ledColorThree.hue, 120, ledColorThree.value));
  ringThree.setSnakeIndex(45);
  ringThree.setSnakeDirection(+1);

  while ( status != WL_CONNECTED) {
    Serial.print("Attempting to connect to Network named: ");
    Serial.println(ssid);

    // Connect to the WPA/WPA2 network:
    status = WiFi.begin(ssid, pass);
  }

  // Print the SSID of the network the Arduino is attached to:
  Serial.print("SSID: ");
  Serial.println(WiFi.SSID());

  // Print the Arduino's IP address:
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: ");
  Serial.println(ip);
}

void loop() {
  Serial.println("starting WebSocket client");
  client.begin();

  while (client.connected()) {

    if(!hasSentID) {
      // Send a message
      client.beginMessage(TYPE_TEXT);
      client.print("MY_ID");
      client.print(thisArduinoIDStr);
      client.endMessage();

      hasSentID = true;
    }

    // check if a message is available to be received
    int messageSize = client.parseMessage();

    if (messageSize > 0) {
      Serial.println("Received a message:");
      String msg = client.readString();
      Serial.println(msg);

      // If the message is to this device, do something
      if(msg == thisArduinoIDStr) {
        shouldRunAnimation = true;
        beginLEDsMillis = millis();
        Serial.println("START Animation");
      }
    }

    unsigned long currentMillis = millis();

    if(shouldRunAnimation && currentMillis - beginLEDsMillis >= durationLEDs) {
      shouldRunAnimation = false;
      Serial.println("STOP Animation");
      digitalWrite(LED_BUILTIN, LOW);
    }

    if(shouldRunAnimation) {
      digitalWrite(LED_BUILTIN, HIGH);
      Serial.println("Running leds:");
      Serial.println(currentMillis - beginLEDsMillis);
      
      core.setAllHSV(CHSV(ledColorOne.hue, 255, 255));
      ringOne.setAllHSV(CHSV(ledColorOne.hue, 255, 255));
      ringTwo.setAllHSV(CHSV(ledColorTwo.hue, 255, 255));
      ringThree.setAllHSV(CHSV(ledColorThree.hue, 255, 255));
      FastLED.show();
      
    } else { // Clear
      core.setAllHSV(CHSV(ledColorOne.hue, 100, 255));
      ringOne.setAllHSV(CHSV(ledColorOne.hue, 100, 255));
      ringTwo.setAllHSV(CHSV(ledColorTwo.hue, 100, 255));
      ringThree.setAllHSV(CHSV(ledColorThree.hue, 100, 255));
      FastLED.show();

      /*
      core.runSnakeAnimation(ledColorCore, true, false, true);
      ringOne.runSnakeAnimation(CHSV( 0, 255, 255), true, false, true);
      ringTwo.runSnakeAnimation(CHSV( 0, 255, 255), true, false, true);
      ringThree.runSnakeAnimation(CHSV( 0, 255, 255), true, false, true);
      */
      
    }

  }

  // Disconnected animations
  core.setAllHSV(CHSV(ledColorOne.hue, 20, 50));
  ringOne.setAllHSV(CHSV(ledColorOne.hue, 20, 50));
  ringTwo.setAllHSV(CHSV(ledColorTwo.hue, 20, 50));
  ringThree.setAllHSV(CHSV(ledColorThree.hue, 20, 50));
  FastLED.show();

  /*
  core.runSnakeAnimation(CHSV(ledColorCore.hue, 120, ledColorCore.value), true, false, true);
  ringOne.runSnakeAnimation(CHSV(ledColorOne.hue, 120, ledColorOne.value), true, false, true);
  ringTwo.runSnakeAnimation(CHSV(ledColorTwo.hue, 120, ledColorTwo.value), true, false, true);
  ringThree.runSnakeAnimation(CHSV(ledColorThree.hue, 120, ledColorThree.value), true, false, true);
  FastLED.show();
  */

  Serial.println("Disconnected");
  hasSentID = false;
}

void runLEDS() {
  core.runSnakeAnimation(ledColorCore, false, true, false);
  ringOne.runSnakeAnimation(ledColorOne, false, true, false);
  ringTwo.runSnakeAnimation(ledColorTwo, false, true, false);
  ringThree.runSnakeAnimation(ledColorThree, false, true, false);

  FastLED.show();
}
