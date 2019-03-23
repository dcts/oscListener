# OSC Listener

With this simple processing scetch you can display any messages recieved by OSC to a canvas. The folders of this repository contain:

```
├── oscListener.pde 
├── README.md 
└── executables
    ├── application.linux32:       executable for Linux 32bit
    ├── application.linux64:       executable for Linux 64bit
    ├── application.linux-arm64:   executable for Linux ARM
    ├── application.linux-armv6hf: executable for Linux ARMv6h (raspberryPi)
    ├── application.windows302:    executable for Windows 32bit
    └── application.windows64:     executable for Windows 64bit
```


### Installation

To get this to work, you can either run the executable of your operating system or run the `oscListener.pde` with [processing](https://processing.org/). Once the program runs, be sure that the sending device (e.g. your phone) is connected to the same wifi network than the recieving device (your computer)! OSC only works when connected to the same network.

### TouchOSC

You can for example use the [**TouchOSC**](https://itunes.apple.com/us/app/touchosc/id288120394) iPhone app (also availible on android). Heres a short demo of the setup and usage

**SETUP**
To make this work you need to insert the displayed IP address as well as the port in your app like shown here:<br>
<img width="250px" src="https://user-images.githubusercontent.com/44790691/54867559-c7d11880-4d81-11e9-9a8b-80d7cb0fdce2.gif">

**USAGE**
This screencapture demonstration was recorded using the Windows 64bit executable and TouchOSC v1.9.10:<br>
<img width="400px" src="https://user-images.githubusercontent.com/44790691/54867304-129d6100-4d7f-11e9-9892-c5daefa10a08.gif">


