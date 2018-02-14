#include <ArduinoHttpClient.h>
#include <WiFi101.h>
#include "config.h"

// Adress and port of the Raspberry Pi with the Node Server on
char serverAddress[] = "192.168.43.72";
int port = 3000;

// ID of this device
String thisArduinoID = "0";
bool hasSentID = false;

WiFiClient wifi;
WebSocketClient client = WebSocketClient(wifi, serverAddress, port);
int status = WL_IDLE_STATUS;


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
        digitalWrite(LED_BUILTIN, HIGH);
        delay(5000);
        digitalWrite(LED_BUILTIN, LOW);
      }
    }

    delay(10);
  }

  Serial.println("Disconnected");
  hasSentID = false;
}

