lineLength = 32
def printWithLinebreak(string, length):
	for i in xrange(0, len(string), length):
		if i != 0:
			if string[i] != ' ':
				# Go back and find last space and replace with line break
				for j in range(0, length):
					if string[i-j] == ' ':
						string = string[:i-j] + '\n' + string[(i-j)+1:]
						break;
	print string

printWithLinebreak("abcdef ghijklmnopqrst uvwxyzABCDEF GHIJKLMN OPQRSTUVWXYZabcd efghijkl mnopqrstuvwxy zABCDEFGHIJKL MNOPQRST UVWXYZ", lineLength)