# Pong

![Basic AI Version](output/Pong-BasicAI-001.gif)

Pong is a basic game that allows a human player to rally a ball back and forth against a computer using a paddle which slides vertically. 

The goal here was to implement an AI-controlled paddle (either the left or the right will do) such that it will try to deflect the ball at all times. Since the paddle can move on only one axis (the Y axis), you will need to determine how to keep the paddle moving in relation to the ball. Currently, each paddle has its own chunk of code where input is detected by the keyboard; this feels like an excellent place to put the code we need! Once either the left or right paddle (or both, if desired) try to deflect the paddle on their own, you’ve done it!</li>


## Prerequisites

Before you begin, ensure you have met the following requirements:
<!--- These are just example requirements. Add, duplicate or remove as required --->
* You have a `<Windows/Linux/Mac>` machine. 
* You have installed the latest version of [Love2D](https://love2d.org/) on your system. Your file output will be display on this platform. To get started, you can find further information [here](https://love2d.org/wiki/Getting_Started). 
* You have a basic understanding of how to run a Lua file on an IDE of your choice (recommend Visual Studio). See the [Lua Programming Manual](https://www.lua.org/manual/5.3/) for reference.
* Optional: Install the Love2D Support Extension if you are using Visual Studio to run the application directly from your IDE. 


