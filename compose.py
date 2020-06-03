import sys
import os

def parse(line):
    if line[:5] == 'code:':
        filename = line[5:]
        with open(filename, 'r') as file:
            dummy, extension = os.path.splitext(filename)
            print('**File:** `%s`\n```%s'%(filename, extension))
            print(file.read())
            print('```')
        return
    while line.find('$$') != -1:
        line = line.replace('$$', '<img src="http://latex.codecogs.com/gif.latex?\dpi{130}', 1)
        line = line.replace('$$', '" border="0"/>'                                         , 1)
    print(line)

with open(sys.argv[1]) as f:
    content = f.readlines()
    content = [x.replace('\n', '') for x in content]
    output = [parse(x) for x in content]
