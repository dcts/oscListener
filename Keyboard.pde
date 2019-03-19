import java.awt.Robot;
//import java.awt.event.KeyEvent;
//import java.io.IOException;

class Keyboard {
  Robot robot;
  HashMap<String, Integer> keyMap;
  
  Keyboard() {
    try {
      // initialize robot + hashmap
      this.robot = new Robot();
      this.keyMap = new HashMap<String, Integer>();
      this.mapKeys();
      println("Keyboard initialized!");
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
  
  void pressKey(String k, int sleeptime) {
    try {
      println("keyboard is pressing key " + k + "\n\n");
      this.robot.keyPress(this.keyMap.get(k));
      Thread.sleep(sleeptime);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
  
  void mapKeys() {
    this.keyMap.put("k",75);
    this.keyMap.put("j",74);
    this.keyMap.put("l",76);
    this.keyMap.put("f",70);
    this.keyMap.put("c",67);
    this.keyMap.put("m",77);
    this.keyMap.put("UP",38);
    this.keyMap.put("DOWN",40);    
  }
}
