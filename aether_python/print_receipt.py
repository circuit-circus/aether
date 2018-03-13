#!/usr/bin/python

from lib.Adafruit_Thermal import *
from PIL import Image, ImageDraw
from time import sleep
import sys
import os

if os.path.dirname(__file__) != '':
    os.chdir(os.path.dirname(__file__))
currentDirectory = os.getcwd()

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

# Create bars programmatically
lineImg = Image.new("1", [receiptWidth, 3], "white") # Working 'background' image
draw = ImageDraw.Draw(lineImg)
draw.rectangle([0, 0, receiptWidth, 3], fill="black")

printer = Adafruit_Thermal("/dev/serial0", 19200, timeout=5)

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
						print i
						string = string[:i-j] + '\n' + string[i-j:]
	printer.println(string)
		
printer.printImage(lineImg, True)

printer.wake()

printer.setSize('S')

aetherLogoPath = currentDirectory + "/images/aether.png"
ccLogoPath = currentDirectory + "/images/cc-logo.png"

aetherLogoImg = Image.open(aetherLogoPath)
ccLogoImg = Image.open(ccLogoPath)

printer.printImage(aetherLogoImg, True)

drawLine()

printer.justify('C')
printWithLinebreak("You asked:")

sleep(3)

printer.inverseOn()
printWithLinebreak(" " + questionTxt + " ")
printer.inverseOff()

sleep(3)

printWithLinebreak(planetName + " answered:")

drawLine()

printer.justify('L')
printWithLinebreak(questionAnswer)

drawLine()

printer.justify('C')
printWithLinebreak("Designed and developed by:")

printer.printImage(ccLogoImg, True)

printer.feed(2)

# When done
printer.sleep()

print("Done here!")
sys.stdout.flush()