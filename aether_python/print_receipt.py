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

# Source: https://stackoverflow.com/questions/21932281/recursively-create-a-new-line-break-after-nth-character-for-a-given-block-of-tex
def wrap(txt, width):
	tmp = ""
	for i in txt.split():
		if len(tmp) + len(i) < width:
			tmp+=" "+i
		else:
			print tmp.strip()
			tmp = i
	return tmp

lineLength = 31
def printWithLinebreak(string):
	#newStr = wrap(string, lineLength)
	#sleep(1)
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
sleep(1)
printWithLinebreak(" " + questionTxt + " ")
sleep(1)
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