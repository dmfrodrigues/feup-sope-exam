import sys
import os

def parse(line):
    if line[:6] == '!code:':
        filename = line[6:]
        with open(filename, 'r') as file:
            dummy, extension = os.path.splitext(filename)
            extension = extension[1:]
            try:
                content = file.read()
                print('### **File:** `%s`\n'%filename)
                if extension != 'md':
                    print('```%s'%extension)
                    print(content)
                    print('```')
                else:
                    print(content)
            except:
                print("Invalid content in " + filename, file=sys.stderr)
        return
    print(line)

with open(sys.argv[1]) as f:
    content = f.readlines()
    content = [x.replace('\n', '') for x in content]
    output = [parse(x) for x in content]
