TOP_DIR  = "./data/kboss/functions/system/boss/each/martellos/action"
PATTERNS = {
            'function kboss:system/boss/each/martellos/action/common/ypos':'function kboss:system/boss/each/common/action/ypos',
            'function kboss:system/boss/each/martellos/action/common/barrier':'function kboss:system/boss/each/common/action/barrier',
            'function kboss:system/boss/each/martellos/action/common/player_direction':'function kboss:system/boss/each/common/action/player_direction',
            'function kboss:system/boss/each/martellos/action/common/space':'function kboss:system/boss/each/common/action/space'

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
