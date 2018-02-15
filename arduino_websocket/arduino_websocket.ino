#include <FastLED.h>
#include <ArduinoHttpClient.h>
#include <WiFi101.h>
#include "config.h"

// Adress and port of the Raspberry Pi with the Node Server on
char serverAddress[] = "192.168.43.72";
int port = 3000;

// ID of this device
String thisArduinoID = "1";
bool hasSentID = false;

WiFiClient wifi;
WebSocketClient client = WebSocketClient(wifi, serverAddress, port);
int status = WL_IDLE_STATUS;


#define LED_PIN     5
#define NUM_LEDS    150
#define BRIGHTNESS  64
#define LED_TYPE    WS2812B
#define COLOR_ORDER GRB
CRGB leds[NUM_LEDS];

#define BRIGHTNESS          96
#define FRAMES_PER_SECOND  120

uint8_t gHue = 0; // rotating "base color" used by many of the patterns

bool shouldRunAnimation = false;
unsigned long beginLEDsMillis = 0;        // will store last time LED was updated
const long durationLEDs = 5000;           // interval at which to blink (milliseconds)


void setup() {
  Serial.begin(9600);

  pinMode(LED_BUILTIN, OUTPUT);

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

  FastLED.addLeds<LED_TYPE, LED_PIN, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip );
  FastLED.setBrightness(  BRIGHTNESS );
  }

void loop() {
  Serial.println("starting WebSocket client");
  client.begin();

  while (client.connected()) {

    if(!hasSentID) {
      // Send a message
      client.beginMessage(TYPE_TEXT);
      client.print("MY_ID");
      client.print(thisArduinoID);
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
      if(msg == thisArduinoID) {
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
      runLEDS();
    } else { // Clear
      for(int i = 0; i < NUM_LEDS; i++) {
        leds[i] = CRGB::Black;
        FastLED.show();
      }
    }

  }

  Serial.println("Disconnected");
  hasSentID = false;
}

void runLEDS() {
  // random colored speckles that blink in and fade smoothly
  fadeToBlackBy( leds, NUM_LEDS, 10);
  int pos = random16(NUM_LEDS);
  leds[pos] += CHSV( gHue + random8(64), 200, 255);

  FastLED.show();  
  //FastLED.delay(1000/FRAMES_PER_SECOND); 
}



