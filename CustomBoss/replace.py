TOP_DIR  = "./data/kboss/functions/system/"
PATTERNS = {
            'KB.AI':'KB.HitBox'

            }
EXT      = []

#            "storage map":"_REPLACE_"

import os
dirs = []
dirs.append(TOP_DIR)
i = 0
for directory in dirs:
    files = os.listdir(directory)
    for f in files:
        path = directory + "/" + f
        if os.path.isdir(path):
            dirs.append(path)

def replacement(string):
    for key, value in PATTERNS.items():
        string = string.replace(key, value)
    return string
def ext_check(path):
    root, ext = os.path.splitext(path)
    if ext in EXT:
        return True
    else:
        return False

dirs.reverse()
for directory in dirs:
    files = os.listdir(directory)
    for f in files:
        if not ext_check(directory + "/" + f):
            try:
                g = replacement(f)
                os.rename(directory + "/" + f, directory + "/" + g)
                path = directory + "/" + g
                if os.path.isfile(path):
                    h = open(path, encoding="utf-8")
                    data = h.read()
                    data = replacement(data)
                    h.close()
                    h = open(path, "w", encoding="utf-8")
                    h.write(data)
                    h.close()
            except:
                print(path)
