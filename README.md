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

To get this to work, you can either run the executable of your operating system (you will need to have [Java installed](https://www.java.com/en/download/)) or run the `oscListener.pde` with [processing](https://processing.org/). If you run the processing scetch you will additionaly have to install the [oscP5](https://github.com/sojamo/oscp5) library (find the installation instructions [here](http://www.sojamo.de/libraries/oscP5/#installation)). Once the program runs, be sure that the sending device (e.g. your phone) is connected to the same wifi network as the recieving device (your computer)! **OSC only works when connected to the same network**.

## TouchOSC

You can for example use the [**TouchOSC**](https://itunes.apple.com/us/app/touchosc/id288120394) iPhone app (also availible on android). Heres a short demo of the setup and usage

### Setup
When the program runs, you can see the recieving IP address and port displayed in the canvas. You then need to insert these information in your TouchOSC app like shown here:<br><br>
<img width="250px" src="https://user-images.githubusercontent.com/44790691/54880463-214e4b80-4e45-11e9-9cb5-6edf551a3621.gif">

### Usage
This screencapture demonstration was recorded using the Windows 64bit executable and TouchOSC v1.9.10:<br><br>
<img width="600px" src="https://user-images.githubusercontent.com/44790691/54880474-35924880-4e45-11e9-9371-6943f616b430.gif">


