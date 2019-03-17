import oscP5.*;
//import netP5.*;

OscP5 oscP5;
//NetAddress myRemoteLocation;
Keyboard k;

void setup() {
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,4559);
  
  // setup keyboard writer
  try {
    k = new Keyboard();
    Thread.sleep(1000);
  } catch (Exception e) {
    e.printStackTrace();
  }
}

/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  //print("### received an osc message.");
  //print(" addrpattern: "+theOscMessage.addrPattern());
  //println(" typetag: "+theOscMessage.typetag());
  if (theOscMessage.addrPattern().equals("/1/toggle1")) {
    println("pushed button 1");
    k.pressKey("f", 100);
  }
  if (theOscMessage.addrPattern().equals("/1/toggle2")) {
    println("pushed button 2");
    k.pressKey("j", 100);
  }
  if (theOscMessage.addrPattern().equals("/1/toggle3")) {
    println("pushed button 3");
    k.pressKey("k", 100);
  }
  if (theOscMessage.addrPattern().equals("/1/toggle4")) {
    println("pushed button 4");
    k.pressKey("l", 100);
  }
}
