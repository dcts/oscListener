import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.IOException;
 
void setup() {
  try {
    //Launch NotePad
    Runtime.getRuntime().exec("notepad");
    //Get a Robot
    Robot robot = new Robot();
    println("hi1");
    Thread.sleep(1000);
    println("hi");
    robot.keyPress(46);
  } catch (Exception e) {
    //Uh-oh...
    e.printStackTrace();
    exit();
  }
}
