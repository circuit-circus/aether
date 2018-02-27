int questionPotPin = A4;
int planetPotPin = A5;

int backButton = 5;
int forwardButton = 6;
int backLED = 3;
int forwardLED = 4;

int activeLED = 0;


void setup() {
  Serial.begin(9600);
  

  pinMode(questionPotPin, INPUT);
  pinMode(planetPotPin, INPUT);
  
  pinMode(backButton, INPUT_PULLUP);
  pinMode(forwardButton, INPUT_PULLUP);
  
  pinMode(backLED, OUTPUT);
  pinMode(forwardLED, OUTPUT);

  digitalWrite(backLED, HIGH);
  digitalWrite(forwardLED, HIGH);

  delay(2000);
  Serial.println("BEGIN!");

}

void loop() {

  //int questionPotVal = analogRead(questionPotPin);
  //int planetPotVal = analogRead(planetPotPin);

  long questionPotVal = random(300);
  long planetPotVal = random(300);

  Serial.print("QUESTION_POT: ");
  Serial.println(questionPotVal);
  delay(random(10000));
  Serial.print("PLANET_POT: ");
  Serial.println(planetPotVal);
  delay(random(10000));

  // Send potentiometer vals to server
  //Serial.println(questionPotVal + "," + planetPotVal);

  // If a button is pressed, send that to server
  /*
  if(digitalRead(backButton)) {
    // Back button Pressed
    Serial.println("BACK");
  }
  else if(digitalRead(forwardButton)) {
    // Forward button Pressed
    Serial.println("FORWARD");
  }
  */

}






