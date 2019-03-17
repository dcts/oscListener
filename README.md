# OSC Listener and Keyboard Kontroller

With this simple processing scetch you can use TouchOSC to control your keyboard while watching youtube videos. When away from keyboard, you can use the following functionality:
- play/pause (Keyboard press "k")
- 10 seconds back (Keyboard press "j")
- 10 seconds forward (Keyboard press "j")
- fullscreenmode (Keyboard press "f")

There are two steps involved in achieving that:
1. listening for OSC messages on your computer (with [pscP5](https://github.com/sojamo/oscp5))
2. sending OSC messages from your phone to your computer (with the app [TouchOSC](https://itunes.apple.com/us/app/touchosc/id288120394))
3. transforming recieved messages to Keyboard presses (with the Java Class [java.atw.Robot](https://docs.oracle.com/javase/7/docs/api/java/awt/Robot.html))

You need to have Processing installed. The files inside the folder `oscP5` are just added as backup, so you will need to install `oscP5` yourself following the instructions [here](http://www.sojamo.de/libraries/oscP5/#installation). The buttons which control the Keyboard are also hardcoded, so if you use an app other than TouchOSC be sure to change that. If you use TouchOSC, be sure to use the layout `simple`. And at last, you need to set the ip-adress inside the TouchOSC app as well as the Port yourself. I used the port 4559.