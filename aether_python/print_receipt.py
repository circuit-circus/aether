#!/usr/bin/python

from lib.Adafruit_Thermal import *
from PIL import Image, ImageDraw
from time import sleep
import sys
import os

if os.path.dirname(__file__) != '':
    os.chdir(os.path.dirname(__file__))
currentDirectory = os.getcwd()

# Get arguments from whatever is calling this script
questionTxt = "What is behind this door?"
if len(sys.argv) > 1:
	questionTxt = sys.argv[1]

planetName = "BRNRD-2.0"
if len(sys.argv) > 2:
	planetName = sys.argv[2]

questionAnswer = "What door?"
if len(sys.argv) > 3:
	questionAnswer = sys.argv[3]

receiptWidth = 384

# Setup for creating lines
lineImg = Image.new("1", [receiptWidth, 3], "white") # Working 'background' image
draw = ImageDraw.Draw(lineImg)
draw.rectangle([0, 0, receiptWidth, 3], fill="black")

printer = Adafruit_Thermal("/dev/serial0", 19200, timeout=5)

# Method definitions
def drawLine():
	printer.feed(1)
	printer.printImage(lineImg, True)
	printer.feed(1)

lineLength = 32
def printWithLinebreak(string):
	for i in xrange(0, len(string), lineLength):
		if i != 0:
			if string[i] != ' ':
				# Go back and find last space and insert with line break
				for j in range(0, lineLength):
					if string[i-j] == ' ':
						string = string[:i-j] + '\n' + string[(i-j)+1:]
						break;
	printer.println(string)

# Setup
printer.wake()
printer.setSize('S')

aetherLogoPath = currentDirectory + "/images/aether.png"
ccLogoPath = currentDirectory + "/images/cc-logo.png"

aetherLogoImg = Image.open(aetherLogoPath)
ccLogoImg = Image.open(ccLogoPath)

# Let's start drawing!
drawLine()

printer.printImage(aetherLogoImg, True)

drawLine()

printer.justify('C')
printWithLinebreak("You asked:")

# Take a break to catch up with the data
sleep(3)

printer.inverseOn()
printWithLinebreak(" " + questionTxt + " ")
printer.inverseOff()

# Take a break to catch up with the data
sleep(3)

printWithLinebreak(planetName + " answered:")

drawLine()

printer.justify('L')
printWithLinebreak(questionAnswer)

drawLine()

printer.justify('C')
printWithLinebreak("Crafted and coded by:")

printer.printImage(ccLogoImg, True)

printer.feed(2)

# When done
printer.sleep()

print("Done here!")
sys.stdout.flush()