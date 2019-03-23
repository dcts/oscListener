# OSC Listener

With this simple processing scetch you can display any messages recieved by OSC to a canvas. This repository has the following structure:

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


## Installation

To get this to work, you can either run the executable of your operating system or run the `oscListener.pde` with [processing](https://processing.org/). Once the program runs, be sure that the sending device (e.g. your phone) is connected to the same wifi network as the recieving device (your computer)! **OSC only works when connected to the same network**.

## TouchOSC

You can for example use the [**TouchOSC**](https://itunes.apple.com/us/app/touchosc/id288120394) iPhone app (also availible on android). Heres a short demo of the setup and usage

### Setup
When the program runs, you can see the recieving IP address and port displayed in the canvas. You then need to insert these information in your TouchOSC app like shown here:<br><br>
<img width="250px" src="https://user-images.githubusercontent.com/44790691/54867559-c7d11880-4d81-11e9-9a8b-80d7cb0fdce2.gif">

### Usage
This screencapture demonstration was recorded using the Windows 64bit executable and TouchOSC v1.9.10:<br><br>
<img width="600px" src="https://user-images.githubusercontent.com/44790691/54867304-129d6100-4d7f-11e9-9892-c5daefa10a08.gif">


