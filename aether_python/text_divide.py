newStr = "Scientists think the high rate of galaxy collisions occurred when the solid rocket boosters separated, the ride got a lot of my time, and a storm had passed just hours before."
lineLength = 31

def wrap(txt, width):
	tmp = ""
	for i in txt.split():
		if len(tmp) + len(i) < width:
			tmp+=" "+i
		else:
			print tmp.strip()
			tmp = i
	return tmp

wrap(newStr, lineLength)