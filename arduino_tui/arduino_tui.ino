int questionPotPin = A4;
int planetPotPin = A5;

int backButton = 5;
int forwardButton = 6;
int backLED = 3;
int forwardLED = 4;

int activeLED = 0;


void setup() {
  Serial.println(9600);

  pinMode(questionPotPin, INPUT);
  pinMode(planetPotPin, INPUT);
  
  pinMode(backButton, INPUT_PULLUP);
  pinMode(forwardButton, INPUT_PULLUP);
  
  pinMode(backLED, OUTPUT);
  pinMode(forwardLED, OUTPUT);

  digitalWrite(backLED, HIGH);
  digitalWrite(forwardLED, HIGH);

}

void loop() {

  int questionPotVal = analogRead(questionPotPin);
  int planetPotVal = analogRead(planetPotPin);

  // Send potentiometer vals to server
  Serial.println(questionPotVal + "," + planetPotVal);

  // If a button is pressed, send that to server
  if(digitalRead(backButton)) {
    // Back button Pressed
    Serial.println("BACK");
  }
  else if(digitalRead(forwardButton)) {
    // Forward button Pressed
    Serial.println("FORWARD");
  }
}






