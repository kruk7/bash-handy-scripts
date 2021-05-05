#!/bin/bash

#How to set properly resolutuin for your monitor
#1. Type cvt 1280 1024 = cvt [width res.] [heigh res.] and press ENTER.
#2. You should get an output similar to the following: 
	#1280x1024 59.89 Hz (CVT 1.31M4) hsync: 63.67 kHz; pclk: 109.00 MHz
	#Modeline "1280x1024_60.00"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync
#3. Copy everything after the "Modeline", and paste it in after the "--newmode" command as follows: 
	#xrandr --newmode "1280x1024_60.00"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync
#4. Now, just type xrandr. This will give you something like: 
	#Screen 0: minimum 320 x 200, current 1280 x 1024, maximum 1920 x 2048
	#VGA-0 connected primary 1280x1024+0+0 (normal left inverted right x axis y axis) 0mm x 0mm
   	#1024x768       60.0  
   	#800x600        60.3     56.2  
   	#848x480        60.0  
   	#640x480        59.9  
   	#1280x1024_60.00   59.9*
#5. The connected screen name is what you need - on my system, it's VGA-0. It should also show the new resolution as stored... not yet active, however.
#6. Type xrandr --addmode VGA-0 1280x1024_60.00. This will add the mode to the dropdown when you go into the display settings.
#7. Type xrandr --output VGA-0 --mode "1280x1024_60.00". This should change your resolution within a split second to your desired setting.

#run followed line as a service on system startup 
xrandr --newmode "1280x1024_60.00"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync
xrandr --addmode VGA-1 1280x1024_60.00
xrandr --output VGA-1 --mode "1280x1024_60.00"


