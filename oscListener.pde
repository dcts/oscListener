import oscP5.*;

OscP5 oscP5;
Keyboard k;

void setup() {
  try {
    // start oscP5, listening for incoming messages at port 4559
    oscP5 = new OscP5(this,4559);
    // setup keyboard writer
    k = new Keyboard();
    Thread.sleep(1000);
  } catch (Exception e) {
    e.printStackTrace();
  }
}

// incoming osc message are forwarded to the oscEvent method. 
void oscEvent(OscMessage theOscMessage) {
  // print OSC Message
  theOscMessage.print();
  
  // listen for OSC messages
  if (theOscMessage.addrPattern().equals("/play")) {
    k.pressKey("k", 100);
  }
  if (theOscMessage.addrPattern().equals("/back")) {
    k.pressKey("j", 100);
  }
  if (theOscMessage.addrPattern().equals("/skip")) {
    k.pressKey("l", 100);
  }
  if (theOscMessage.addrPattern().equals("/fullscreen")) {
    k.pressKey("f", 100);
  }
  if (theOscMessage.addrPattern().equals("/subtitles")) {
    k.pressKey("c", 100);
  }
  if (theOscMessage.addrPattern().equals("/mute")) {
    k.pressKey("m", 100);
  }
  if (theOscMessage.addrPattern().equals("/vol-up")) {
    k.pressKey("UP", 100);
  }
  if (theOscMessage.addrPattern().equals("/vol-down")) {
    k.pressKey("DOWN", 100);
  }
}
