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

printer.wake()

printer.setSize('S')

aetherLogoPath = currentDirectory + "/images/aether.png"
ccLogoPath = currentDirectory + "/images/cc-logo.png"
groupmLogoPath = currentDirectory + "/images/groupm-logo.png"

aetherLogoImg = Image.open(aetherLogoPath)
ccLogoImg = Image.open(ccLogoPath)
groupmLogoImg = Image.open(groupmLogoPath)

printer.printImage(aetherLogoImg, True)

drawLine()

printer.justify('C')
printer.println("Your question was:")

sleep(3)

printer.inverseOn()
printer.println(" " + questionTxt + " ")
printer.inverseOff()

sleep(3)

printer.println(planetName + " answered:")

drawLine()

printer.justify('L')
printer.println(questionAnswer)

drawLine()

printer.justify('C')
printer.println("Tech developed by:")

printer.printImage(ccLogoImg, True)

printer.println("for")

printer.printImage(groupmLogoImg, True)

printer.feed(2)

# When done
printer.sleep()

print("Done here!")
sys.stdout.flush()