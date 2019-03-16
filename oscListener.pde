
 
void setup() {
  try {
    Keyboard k = new Keyboard();
    //Launch NotePad
    Runtime.getRuntime().exec("notepad");
    Thread.sleep(1000);
    k.pressKey("l", 100);
    k.pressKey("j", 100);
    k.pressKey("k", 100);
  } catch (Exception e) {
    e.printStackTrace();
  }
}
