const int questionPotPin = A4;
int questionPotVal = 0;
int questionVal;
int lastQuestionVal = questionVal;
const int NO_OF_PLANETS = 8;

const int planetPotPin = A5;
const int numReadingsPlanetPot = 10;
int readingsPlanetPot[numReadingsPlanetPot];      // the readings from the analog input
int readIndexPlanetPot = 0;              // the index of the current reading
int totalPlanetPot = 0;                  // the running total
int averagePlanetPot = 0;
int planetVal;
int lastPlanetVal = planetVal;
const int NO_OF_QUESTIONS = 8;

const int backButtonPin = 2;
int backButtonState;
int lastBackButtonState;

const int continueButtonPin = 3;
int continueButtonState;
int lastContinueButtonState;

const int transmitButtonPin = 4;
int transmitButtonState;
int lastTransmitButtonState;

const int transmitButtonLEDPin = 6;
int transmitButtonLEDValue;
long transmitButtonLEDTime=0;
int transmitButtonLEDPeriode = 2000;

void setup() {
  Serial.begin(9600);
  

  pinMode(questionPotPin, INPUT);
  pinMode(planetPotPin, INPUT);

  pinMode(backButtonPin, INPUT_PULLUP);
  pinMode(continueButtonPin, INPUT_PULLUP);
  pinMode(transmitButtonPin, INPUT_PULLUP);

  pinMode(transmitButtonLEDPin, OUTPUT);

  // Initialize planet potentiometer average readings
  for (int thisReadingPlanetPot = 0; thisReadingPlanetPot < numReadingsPlanetPot; thisReadingPlanetPot++) {
    readingsPlanetPot[thisReadingPlanetPot] = 0;
  }

  delay(2000);
  Serial.println("BEGIN!");

}

void loop() {  

  /* QUESTION (WHEEL) POTENTIOMETER */
  questionPotVal = analogRead(questionPotPin);
  questionVal = map(questionPotVal, 0, 1022, 0, NO_OF_QUESTIONS-1);
  if(questionVal != lastQuestionVal) {
    Serial.print("QUESTION: ");
    Serial.println(questionVal);
  }
  lastQuestionVal = questionVal;


  /* PLANET SLIDER POTENTIOMETER */
  averagePlanetPot = calculatePlanetPotAverage();
  planetVal = map(averagePlanetPot, 11, 1000, 0, NO_OF_PLANETS-1);
  if(planetVal != lastPlanetVal) {
    Serial.print("PLANET: ");
    Serial.println(planetVal);
  }
  lastPlanetVal = planetVal;


  /* BUTTONS */
  backButtonState = digitalRead(backButtonPin);
  if(backButtonState != lastBackButtonState) {
    Serial.println("BUTTON: BACK");
  }
  lastBackButtonState = backButtonState;

  continueButtonState = digitalRead(continueButtonPin);
  if(continueButtonState != lastContinueButtonState) {
    Serial.println("BUTTON: CONTINUE");
  }
  lastContinueButtonState = continueButtonState;

  transmitButtonState = digitalRead(transmitButtonPin);
  if(transmitButtonState != lastTransmitButtonState && transmitButtonState == LOW) {
    Serial.println("BUTTON: TRANSMIT");
    delay(10);
  }
  
  lastTransmitButtonState = transmitButtonState;

  /* TRANSMIT BUTTON LIGHT */
 
  transmitButtonLEDTime = millis();
  transmitButtonLEDValue = 128 + 127 * cos(2 * PI / transmitButtonLEDPeriode * transmitButtonLEDTime);
  analogWrite(transmitButtonLEDPin, transmitButtonLEDValue);           // sets the value (range from 0 to 255)

}

int calculatePlanetPotAverage() {
  // subtract the last reading:
  totalPlanetPot = totalPlanetPot - readingsPlanetPot[readIndexPlanetPot];
  // read from the sensor:
  readingsPlanetPot[readIndexPlanetPot] = analogRead(planetPotPin);
  // add the reading to the total:
  totalPlanetPot = totalPlanetPot + readingsPlanetPot[readIndexPlanetPot];
  // advance to the next position in the array:
  readIndexPlanetPot++;

  // if we're at the end of the array...
  if (readIndexPlanetPot >= numReadingsPlanetPot) {
    // ...wrap around to the beginning:
    readIndexPlanetPot = 0;
  }

  // calculate the average:
  return totalPlanetPot / numReadingsPlanetPot;
  
  delay(1);
}






