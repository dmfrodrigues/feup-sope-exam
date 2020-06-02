import sys

def parse(line):
    if line.startswith('//'):
        return
    if 'https://github.com/FEUP-SWERC/algorithms/blob/master/code/' in line:
        i = line.find("code/")
        filename = line[line.find("code/"):-1]
        with open("../"+filename, 'r') as file:
            if filename.endswith('.cpp'):
                print('**Code:** %s\n```cpp'%filename)
                print(file.read())
                print('```')
            else:
                content = file.readlines()
                content = [x.strip() for x in content]
                output = [parse(x) for x in content]
        return
    while line.find('$$') != -1:
        line = line.replace('$$', '<img src="http://latex.codecogs.com/gif.latex?\dpi{130}', 1)
        line = line.replace('$$', '" border="0"/>'                                         , 1)
    print(line)

with open(sys.argv[1]) as f:
    content = f.readlines()
    content = [x.rstrip() for x in content]
    output = [parse(x) for x in content]
