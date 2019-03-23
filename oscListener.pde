/* OSC Listener
 * by dcts
 * A short sketch that displays all recieved OSC messages
 * to a canvas. Only recieves messages, nothing is being
 * send. For debugging and setting up OSC connection only. 
 */

import oscP5.*;
import netP5.*;
import java.net.Inet4Address;

OscP5 oscP5;      // oscP5 listener
int port = 4559;  // set default port to 4559
String myIp = ""; // IP address of listener

String headerMsg = "Listening for OSC messages on port " + port + "\nIP address: ";
String instructionMsg = "";
String oscMsgString = "no messages recieved yet";

void setup() {
  size(700,300);  
  //start oscP5, listening for incoming messages at default port (4559)
  try {
    oscP5 = new OscP5(this, port);
    myIp = Inet4Address.getLocalHost().getHostAddress(); // get ip address
    // check if ip address valid
    if (myIp.startsWith("192.168.")) {
      headerMsg += myIp;
    } else { // wrong ip... you will need to check ip manually to setup OSC connection
      headerMsg += "unknown"; 
      instructionMsg = "(go to whatismyip.com and use the address starting with 192.168...)";
    }
  } catch (Exception e) {e.printStackTrace();}
}

void draw() {
  background(0,0,0);
  textSize(30);
  text(headerMsg, 10, 40);
  textSize(14);
  text(instructionMsg, 10, 120);
  textSize(18);
  text(oscMsgString, 10, 160); 
}

// incoming osc message are forwarded to the oscEvent method. 
void oscEvent(OscMessage oscMsg) {
  StringBuilder sb = new StringBuilder();
  sb.append("sender: " + oscMsg.toString().split(" | ")[0] + "\n");
  sb.append("message: " + oscMsg.addrPattern() + "\n");
  sb.append("values: \n" + Bytes.getAsString(oscMsg.arguments()));
  oscMsgString = sb.toString(); // print osc message to canvas
}
