import re
import sys
import glob

dataName = "aether/data"
dataDir = dataName + "/*.txt"

dataList = glob.glob(dataDir, recursive=True)

removeCharsReg = re.compile(r"\[Illustration\]|\^\●|\/|\#|\…|\>|\<|\*|\_|\%|\°|\{|\}|\[|\]|\±", re.IGNORECASE)
andCharReg = re.compile(r"\&", re.IGNORECASE)
hyphenReg = re.compile(r"\—", re.IGNORECASE)
aReg = re.compile(r"\à|\á", re.IGNORECASE)
iReg = re.compile(r"\ï", re.IGNORECASE)
eReg = re.compile(r"\é", re.IGNORECASE)
cReg = re.compile(r"\ç", re.IGNORECASE)
oReg = re.compile(r"\ö|\ó|\ò", re.IGNORECASE)
uReg = re.compile(r"\ü", re.IGNORECASE)
tripleDotsReg = re.compile(r"\ \.\ \.\ \.", re.IGNORECASE)
doubleQuotesReg = re.compile(r"\”|\“", re.IGNORECASE)
singleQuotesReg = re.compile(r"\‘|\’", re.IGNORECASE)
spaceLimitedReg = re.compile(r"\ +", re.IGNORECASE)
lineBreakLimitedReg = re.compile(r"\n\n+|\ \n+", re.IGNORECASE)
enterToSpaceReg = re.compile(r"\n", re.IGNORECASE)

for dataFile in dataList:
	dataText = open(dataFile, "r").read()
	print("Loading file " + dataFile)
	chars = sorted(list(set(dataText)))
	print("total chars:", len(chars))
	print(chars);
	print("Replacing chars");
	dataText = removeCharsReg.sub(' ', dataText)
	print("Replacing ampersands");
	dataText = andCharReg.sub('and', dataText)
	print("Replacing hyphens");
	dataText = hyphenReg.sub('-', dataText)
	print("Replacing a's");
	dataText = aReg.sub('a', dataText)
	print("Replacing i's");
	dataText = iReg.sub('i', dataText)
	print("Replacing e's");
	dataText = eReg.sub('e', dataText)
	print("Replacing c's");
	dataText = cReg.sub('c', dataText)
	print("Replacing o's");
	dataText = oReg.sub('o', dataText)
	print("Replacing u's");
	dataText = uReg.sub('u', dataText)
	print("Fixing triple dots");
	dataText = tripleDotsReg.sub('...', dataText)
	print("Fixing double quotes");
	dataText = doubleQuotesReg.sub('\"', dataText)
	print("Fixing single quotes");
	dataText = singleQuotesReg.sub('\'', dataText)
	print("Limiting spaces");
	dataText = spaceLimitedReg.sub(' ', dataText)
	print("Limiting line breaks");
	dataText = lineBreakLimitedReg.sub('\n', dataText)
	print("Replacing line breaks with spaces");
	dataText = enterToSpaceReg.sub(' ', dataText)

	dataWriteText = open(dataFile, "w")
	dataWriteText.write(dataText)