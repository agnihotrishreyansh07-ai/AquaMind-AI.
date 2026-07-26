#include <WiFi.h>

const char* ssid = "YOUR_WIFI_NAME";
const char* password = "YOUR_WIFI_PASSWORD";

void setup() {
  Serial.begin(115200);
  
  // Connect to Wi-Fi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi...");
  }
  Serial.println("Connected to WiFi!");
}

void loop() {
  // Mock reading from a water pressure or flow sensor
  float waterPressure = random(20, 50); 
  
  Serial.print("Current Water Pressure: ");
  Serial.println(waterPressure);
  
  // Wait 5 seconds before next reading
  delay(5000); 
}
