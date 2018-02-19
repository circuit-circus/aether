import re
import sys
import glob

dataName = "aether/data"
dataDir = dataName + "/*.txt"

dataList = glob.glob(dataDir, recursive=True)

asteriskReg = re.compile(r"\*", re.IGNORECASE)
underscoreReg = re.compile(r"\_", re.IGNORECASE)
illustrationReg = re.compile(r"\[Illustration\]", re.IGNORECASE)
circonflexReg = re.compile(r"\^", re.IGNORECASE)
tripleDotsReg = re.compile(r"\ \.\ \.\ \.", re.IGNORECASE)
spaceLimitedReg = re.compile(r"\ +", re.IGNORECASE)
spaceEnterLimitedReg = re.compile(r"\ \n+", re.IGNORECASE)
doubleEnterLimitedReg = re.compile(r"\n\n+", re.IGNORECASE)
enterToSpaceReg = re.compile(r"\n", re.IGNORECASE)

for dataFile in dataList:
	dataText = open(dataFile, "r").read()
	print("Loading file " + dataFile)
	chars = sorted(list(set(dataText)))
	print("total chars:", len(chars))
	print(chars);
	print("Replacing asterisks");
	asteriskFreeText = asteriskReg.sub(' ', dataText)
	print("Replacing underscores");
	underscoreFreeText = underscoreReg.sub(' ', asteriskFreeText)
	print("Removing illustrations");
	illustrationFreeText = illustrationReg.sub(' ', underscoreFreeText)
	print("Removing circonflexes");
	circonflexText = circonflexReg.sub(' ', illustrationFreeText)
	print("Fixing triple dots");
	tripleDotsText = tripleDotsReg.sub('...', circonflexText)
	print("Limiting spaces");
	spaceLimitedText = spaceLimitedReg.sub(' ', tripleDotsText)
	print("Limiting space-enters");
	spaceEnterLimitedText = spaceEnterLimitedReg.sub('\n', spaceLimitedText)
	print("Limiting double enters");
	doubleEnterLimitedText = doubleEnterLimitedReg.sub('\n', spaceEnterLimitedText)
	print("Replacing enters with spaces");
	enterToSpaceText = enterToSpaceReg.sub(' ', doubleEnterLimitedText)

	dataWriteText = open(dataFile, "w")
	dataWriteText.write(enterToSpaceText)