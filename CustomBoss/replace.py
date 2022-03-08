TOP_DIR  = "./data/kboss/functions/system/boss/"
PATTERNS = {
            'function kboss:system/boss/each/martellos/action/change/0':'function kboss:system/boss/each/martellos/action/each/0/start',
            'function kboss:system/boss/each/martellos/action/change/1':'function kboss:system/boss/each/martellos/action/each/1/start',
            'function kboss:system/boss/each/martellos/action/change/2':'function kboss:system/boss/each/martellos/action/each/2/start',
            'function kboss:system/boss/each/martellos/action/change/3':'function kboss:system/boss/each/martellos/action/each/3/start',
            'function kboss:system/boss/each/martellos/action/change/4':'function kboss:system/boss/each/martellos/action/each/4/start',
            'function kboss:system/boss/each/martellos/action/change/5':'function kboss:system/boss/each/martellos/action/each/5/start',
            'function kboss:system/boss/each/martellos/action/change/6':'function kboss:system/boss/each/martellos/action/each/6/start',
            'function kboss:system/boss/each/martellos/action/change/7':'function kboss:system/boss/each/martellos/action/each/7/start',
            'function kboss:system/boss/each/martellos/action/change/8':'function kboss:system/boss/each/martellos/action/each/8/start',
            'function kboss:system/boss/each/martellos/action/change/9':'function kboss:system/boss/each/martellos/action/each/9/start'

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
