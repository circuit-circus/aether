#include <ArduinoHttpClient.h>
#include <WiFi101.h>
 #include <Wire.h>
#include "config.h"

// Adress and port of the Raspberry Pi with the Node Server on
char serverAddress[] = "192.168.1.128";
int port = 8080;

// ID of this device
const int thisArduinoID = 4;
String thisArduinoIDStr = String(thisArduinoID);
bool hasSentID = false;

WiFiClient wifi;
WebSocketClient client = WebSocketClient(wifi, serverAddress, port);
int status = WL_IDLE_STATUS;

void setup() {
  Serial.begin(9600);
  Wire.begin();

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
      // Send message with this Arduino's ID
      client.beginMessage(TYPE_TEXT);
      client.print("MY_ID");
      client.print(thisArduinoIDStr);
      client.endMessage();

      hasSentID = true;

      // Tell Uno that we're connected
      Wire.beginTransmission(8);
      Wire.write(1);
      Wire.endTransmission();
    }

    // check if a message is available to be received
    int messageSize = client.parseMessage();

    if (messageSize > 0) {
      Serial.println("Received a message:");
      String msg = client.readString();
      Serial.println(msg);

      // If the message is to this device, tell that to the Uno
      if(msg == thisArduinoIDStr) {
        Wire.beginTransmission(8);
        Wire.write(2);
        Wire.endTransmission();
      }
      else {
        Wire.beginTransmission(8);
        Wire.write(3);
        Wire.endTransmission();
      }
    }

  }

  // Tell Uno we're not connected
  Wire.beginTransmission(8);
  Wire.write(0);
  Wire.endTransmission();


  Serial.println("Disconnected");
  hasSentID = false;
}

