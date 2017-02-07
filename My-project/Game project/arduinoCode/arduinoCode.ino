//Specify your input pin here
int sensePin = 12;

void setup()
{
  analogReference(DEFAULT);
  Serial.begin(9600); 
}

void loop()
{
//Change 300 and 750 to min and max values recieved from
//Serial port
   int val = map(analogRead(sensePin), 190, 720, 0, 500);
   //Now that you figured them out, change
   //"analogRead(sensePin)" on the next line to
   //"val"
   Serial.println(val);
   delay(100);
  //Serial.println(analogRead(sensePin));
}
