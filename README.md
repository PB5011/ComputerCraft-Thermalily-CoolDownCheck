# ComputerCraft-Thermalily-CoolDownCheck
Lua Code used for keeping track of Thermalily from Botania cooldown and then dispensing lava for automation. It uses an advanced computer to grab the power from a comparator set to "comparator" mode. 
It stores that variable and multiplies it by 20 seconds per redstone strength level to get the cooldown time in seconds.
This will count down the cool down and display when active. When cooldown ends, it will output a redstone pulse to the right side to a fluid placer from Industrial Foregoing.
The fluid placer's redstone control was set to run on pulse.

This is quickly written and probably not the most efficient in terms of code, but it functions for my use and that is what matters. Modify it as needed for your own use.


Here is how I had mine set up and was working. After the computer and the comparator and such is all setup, youll will need to jumpstart the process by manually placing some lava to get the flower started, the run the program.

![setup](ComputerSteup.png)
