import 'dart:math';

const protocol = 'tcp';
const host =
    'i-surveil-be.virtualpolicestation.com'; //'197.231.176.209';  // Remote broker's host IP or domain
const port =
    '1883'; // Replace with the correct port of the remote broker (default is 1883 for MQTT)
String clientId = "i-surveil-${generateRandomHex()}";

// Create the connection URL for the remote broker
const mqttUrl = "${host}";

String generateRandomHex() {
  final random = Random();
  // Generate a random number and convert it to a hexadecimal string
  return random.nextDouble().toString().substring(2); // Remove the leading '0.'
}
