import os
import general_settings
import math
import json

BOSS = general_settings.BOSS
DIR  = general_settings.DIR

with open('./boss_settings/' + BOSS + '.json', encoding='utf-8') as f:
    boss_settings = json.load(f)
    BOSS_NAME = boss_settings["BOSS_NAME"]
    BOSS_NAMESPACE = boss_settings["BOSS_NAMESPACE"]
    BOSS_TAG = boss_settings["BOSS_TAG"]
    BOSS_SIZE_TAG = boss_settings["BOSS_SIZE_TAG"] 
    BOSS_SIZE_NAMESPACE = boss_settings["BOSS_SIZE_NAMESPACE"]
    MODEL_ENTITY = boss_settings["MODEL_ENTITY"]
    ON_AEC = boss_settings["ON_AEC"]
    USE_POSE_Z = boss_settings["USE_POSE_Z"]
    REGENERATE_ACTION = boss_settings["REGENERATE_ACTION"]
    MODEL_LIST = boss_settings["MODEL_LIST"]
    HITBOX_LIST = boss_settings["HITBOX_LIST"]
    POSE_LIST = boss_settings["POSE_LIST"]
    ACTION_LIST = boss_settings["ACTION_LIST"]
    START_ACTION = boss_settings["START_ACTION"]
    DEATH_ACTION = boss_settings["DEATH_ACTION"]

path = DIR + 'functions/system/boss/each/'

# ファイルに行を追加(一致する行がないときのみ)
def append_new_line(l, new_line, file_path):
    if not (new_line in l):
        l.append(new_line)
        with open(file_path, mode='w', encoding='utf-8') as f:
            f.writelines(l)

# 各ボスへの分岐処理に追加
def append_jump_path():
    global filename
    ## action
    filename = 'action.mcfunction'
    with open(path + filename) as f:
        l = f.readlines()
        new_line = 'execute if entity @s[tag=KB.' + BOSS_TAG + '] run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/action/main\n'
        append_new_line(l, new_line, path + filename)
    ## die
    filename = 'die.mcfunction'
    with open(path + filename) as f:
        l = f.readlines()
        if DEATH_ACTION == None:
            new_line = 'execute if entity @s[tag=KB.' + BOSS_TAG + '] run function kboss:system/boss/each/common/disappear\n'
        else:
            new_line = 'execute if entity @s[tag=KB.' + BOSS_TAG + '] run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/action/each/' + str(DEATH_ACTION) + '/start\n'
        append_new_line(l, new_line, path + filename)
    ## hitbox_num_correct
    filename = 'hitbox_num_correct.mcfunction'
    with open(path + filename) as f:
        l = f.readlines()
        new_line = 'execute if entity @s[tag=KB.' + BOSS_TAG + '] run scoreboard players set $hitbox_num_correct kb.temp ' + str(len(HITBOX_LIST)) + '\n'
        append_new_line(l, new_line, path + filename)
    ## hitbox
    filename = 'hitbox.mcfunction'
    with open(path + filename) as f:
        l = f.readlines()
        new_line = 'execute if entity @s[tag=KB.' + BOSS_TAG + '] run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/hitbox/main\n'
        append_new_line(l, new_line, path + filename)
    ## skin_pos
    filename = 'skin_pos.mcfunction'
    with open(path + filename) as f:
        l = f.readlines()
        new_line = 'execute if entity @s[tag=KB.' + BOSS_TAG + '] run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/main\n'
        append_new_line(l, new_line, path + filename)
    ## skin
    filename = 'skin.mcfunction'
    with open(path + filename) as f:
        l = f.readlines()
        new_line = 'execute if entity @s[tag=KB.' + BOSS_TAG + '] run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin/main\n'
        append_new_line(l, new_line, path + filename)

# settingsのMODEL_LISTが空でないときに実行する処理
def when_model_exist():
    path = DIR +'functions/system/boss/each/' + BOSS_NAMESPACE + '/'
    # ディレクトリが無ければ生成
    if not os.path.exists(path):
        os.makedirs(path)
    # skin
    ## main
    current_path = path + 'skin/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    filename = 'main.mcfunction'
    l=[]
    for part in MODEL_LIST:
        l.append('execute as @e[distance=..16,tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck] run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin/each/' + part['name_space'] + '\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ## each
    current_path = path + 'skin/each/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    for part in MODEL_LIST:
        filename = part['name_space'] + '.mcfunction'
        l=[]
        if part['parent'] == None:
            temp = 'tag=KB.Main,'
        else:
            temp = 'tag=KB.' + part['parent'] + ',tag=KB.Skin,'
        l.append('execute as @e[distance=..16,' + temp + 'tag=KB.BossCheck,limit=1] run function kboss:system/boss/each/common/skin/parent' + '\n')
        l.append('function kboss:system/boss/each/common/skin/update' + '\n')
        with open(current_path + filename, mode='w', encoding='utf-8') as f:
            f.writelines(l)
    ## skin_pos
    # main
    current_path = path + 'skin_pos/'
    ## ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    filename = 'main.mcfunction'
    l=[]
    if ON_AEC:
        temp_tag = 'SkinPos'
    else:
        temp_tag = 'Skin'
    for part in MODEL_LIST:
        if part['is_main'] == 1:
            l.append('execute as @e[distance=..16,tag=KB.' + part['tag'] + ',tag=KB.' + temp_tag + ',tag=KB.BossCheck] run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/' + part['name_space'] + '\n')
        else:
            l.append('execute as @e[distance=..16,tag=KB.' + part['tag'] + ',tag=KB.' + temp_tag + ',tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.' + part['parent'] + ',tag=KB.' + temp_tag + ',limit=1] run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/' + part['name_space'] + '\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    # each
    current_path = path + 'skin_pos/each/'
    ## ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    for part in MODEL_LIST:
        current_path = path + 'skin_pos/each/'
        filename = part['name_space'] + '.mcfunction'
        l=[]
        if part['parent'] == None:
            temp = 'tag=KB.Main,'
        else:
            temp = 'tag=KB.' + part['parent'] + ',tag=KB.Skin,'
        l.append('execute as @e[distance=..16,' + temp + 'tag=KB.BossCheck,limit=1] run function kboss:system/boss/each/common/skin/parent' + '\n')
        l.append('execute as @e[distance=..4,tag=KB.Skin,tag=KB.' + part['tag'] + ',tag=KB.BossCheck,limit=1] run function kboss:system/boss/each/common/skin_pos/score\n')
        if (not part['tp'][0] == 0) or (not part['tp'][1] == 0):
            l.append('execute unless score $parent kb.rz_global matches 6.. unless score $parent kb.rz_global matches ..-6 if entity @s[tag=KB.' + BOSS_SIZE_TAG + '] run tp @s ^' + str(part['tp'][0]) + ' ^' + str(part['tp'][1]) + ' ^' + str(part['tp'][2]) + '\n')
            l.append('execute if score $parent kb.rz_global matches 6.. run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/z/' + part['name_space'] + '/positive/main\n')
            l.append('execute if score $parent kb.rz_global matches ..-6 run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/z/' + part['name_space'] + '/negative/main\n')
        else:
            l.append('execute if entity @s[tag=KB.' + BOSS_SIZE_TAG + '] run tp @s ^' + str(part['tp'][0]) + ' ^' + str(part['tp'][1]) + ' ^' + str(part['tp'][2]) + '\n')
        l.append('execute store result entity @s Rotation[0] float 1 run scoreboard players get $temp kb.ry_global' + '\n')
        l.append('execute store result entity @s Rotation[1] float 1 run scoreboard players get $temp kb.rx_global' + '\n')
        with open(current_path + filename, mode='w', encoding='utf-8') as f:
            f.writelines(l)
        # rzでtp値分岐
        if (not part['tp'][0] == 0) or (not part['tp'][1] == 0):
            # positive
            current_path = path + 'skin_pos/each/z/' + part['name_space'] + '/positive/'
            if not os.path.exists(current_path):
                os.makedirs(current_path)
            split_range1 = 60
            split_range2 = 20
            split_range3 = 5
            for i1 in range(int(180/split_range1)):
                for i2 in range(int(split_range1/split_range2)):
                    if not os.path.exists(current_path + str(i1*split_range1) + '/' + str(i2*split_range2) + '/'):
                        os.makedirs(current_path + str(i1*split_range1) + '/' + str(i2*split_range2) + '/')
                    for i3 in range(int(split_range2/split_range3)):
                        l=[]
                        filename =  str(i3*split_range3) + '.mcfunction'
                        for i in range(split_range3):
                            p1 = [part['tp'][0], part['tp'][1]]
                            rz = (i1*split_range1 + i2*split_range2 + i3*split_range3 + i)
                            alpha = -rz*math.pi/180
                            p2 = [p1[0]*math.cos(alpha)-p1[1]*math.sin(alpha), p1[1]*math.cos(alpha)+p1[0]*math.sin(alpha)]
                            l.append('execute if score $parent kb.rz_global matches ' + str(rz+1) + ' run tp ^' + str(round(p2[0], 4)) + ' ^' + str(round(p2[1], 4)) + ' ^' + str(part['tp'][2]) + '\n')
                        with open(current_path + str(i1*split_range1) + '/' + str(i2*split_range2) + '/' + filename, mode='w', encoding='utf-8') as f:
                            f.writelines(l)
                    l=[]
                    filename =  str(i2*split_range2) + '.mcfunction'
                    for i3 in range(int(split_range2/split_range3)):
                        l.append('execute if score $parent kb.rz_global matches ' + str(i1*split_range1 + i2*split_range2 + i3*split_range3+1) + '..' + str(i1*split_range1 + i2*split_range2 + (i3+1)*split_range3-1+1) + ' run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/z/' + part['name_space'] + '/positive/' + str(i1*split_range1) + '/' + str(i2*split_range2) + '/' + str(i3*split_range3) + '\n')
                    with open(current_path + str(i1*split_range1) + '/' + filename, mode='w', encoding='utf-8') as f:
                        f.writelines(l)
                l=[]
                filename =  str(i1*split_range1) + '.mcfunction'
                for i2 in range(int(split_range1/split_range2)):
                    l.append('execute if score $parent kb.rz_global matches ' + str(i1*split_range1 + i2*split_range2+1) + '..' + str(i1*split_range1 + (i2+1)*split_range2-1+1) + ' run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/z/' + part['name_space'] + '/positive/' + str(i1*split_range1) + '/' + str(i2*split_range2) + '\n')
                with open(current_path + filename, mode='w', encoding='utf-8') as f:
                    f.writelines(l)
            l=[]
            filename =  'main.mcfunction'
            for i1 in range(int(180/split_range1)):
                l.append('execute if score $parent kb.rz_global matches ' + str(i1*split_range1+1) + '..' + str((i1+1)*split_range1-1+1) + ' run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/z/' + part['name_space'] + '/positive/' + str(i1*split_range1) + '\n')
            with open(current_path + filename, mode='w', encoding='utf-8') as f:
                f.writelines(l)

            # negative
            current_path = path + 'skin_pos/each/z/' + part['name_space'] + '/negative/'
            if not os.path.exists(current_path):
                os.makedirs(current_path)
            split_range1 = 60
            split_range2 = 20
            split_range3 = 5
            for i1 in range(int(180/split_range1)):
                for i2 in range(int(split_range1/split_range2)):
                    if not os.path.exists(current_path + str(i1*split_range1) + '/' + str(i2*split_range2) + '/'):
                        os.makedirs(current_path + str(i1*split_range1) + '/' + str(i2*split_range2) + '/')
                    for i3 in range(int(split_range2/split_range3)):
                        l=[]
                        filename =  str(i3*split_range3) + '.mcfunction'
                        for i in range(split_range3):
                            p1 = [part['tp'][0], part['tp'][1]]
                            rz = -(i1*split_range1 + i2*split_range2 + i3*split_range3 + i)
                            alpha = -rz*math.pi/180
                            p2 = [p1[0]*math.cos(alpha)-p1[1]*math.sin(alpha), p1[1]*math.cos(alpha)+p1[0]*math.sin(alpha)]
                            l.append('execute if score $parent kb.rz_global matches ' + str(rz-1) + ' run tp ^' + str(round(p2[0], 4)) + ' ^' + str(round(p2[1], 4)) + ' ^' + str(part['tp'][2]) + '\n')
                        with open(current_path + str(i1*split_range1) + '/' + str(i2*split_range2) + '/' + filename, mode='w', encoding='utf-8') as f:
                            f.writelines(l)
                    l=[]
                    filename =  str(i2*split_range2) + '.mcfunction'
                    for i3 in range(int(split_range2/split_range3)):
                        l.append('execute if score $parent kb.rz_global matches ' + str(-(i1*split_range1 + i2*split_range2 + (i3+1)*split_range3-1+1)) + '..' + str(-(i1*split_range1 + i2*split_range2 + i3*split_range3+1)) + ' run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/z/' + part['name_space'] + '/negative/' + str(i1*split_range1) + '/' + str(i2*split_range2) + '/' + str(i3*split_range3) + '\n')
                    with open(current_path + str(i1*split_range1) + '/' + filename, mode='w', encoding='utf-8') as f:
                        f.writelines(l)
                l=[]
                filename =  str(i1*split_range1) + '.mcfunction'
                for i2 in range(int(split_range1/split_range2)):
                    l.append('execute if score $parent kb.rz_global matches ' + str(-(i1*split_range1 + (i2+1)*split_range2-1+1)) + '..' + str(-(i1*split_range1 + i2*split_range2+1)) + ' run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/z/' + part['name_space'] + '/negative/' + str(i1*split_range1) + '/' + str(i2*split_range2) + '\n')
                with open(current_path + filename, mode='w', encoding='utf-8') as f:
                    f.writelines(l)
            l=[]
            filename =  'main.mcfunction'
            for i1 in range(int(180/split_range1)):
                l.append('execute if score $parent kb.rz_global matches ' + str(-((i1+1)*split_range1-1+1)) + '..' + str(-(i1*split_range1+1)) + ' run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/skin_pos/each/z/' + part['name_space'] + '/negative/' + str(i1*split_range1) + '\n')
            with open(current_path + filename, mode='w', encoding='utf-8') as f:
                f.writelines(l)
            
    ## pose
    current_path = path + 'pose/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    ### common
    filename = 'common.mcfunction'
    l=[]
    for part in MODEL_LIST:
        l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck,tag=KB.' + BOSS_TAG + '] kb.rx_goal run data get storage kboss:temp temp.' + part['tag'] + '.rx' + '\n')
        l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck,tag=KB.' + BOSS_TAG + '] kb.ry_goal run data get storage kboss:temp temp.' + part['tag'] + '.ry' + '\n')
        l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck,tag=KB.' + BOSS_TAG + '] kb.rz_goal run data get storage kboss:temp temp.' + part['tag'] + '.rz' + '\n\n')
    l.append('data remove storage kboss:temp temp' + '\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ### common_reverse
    filename = 'common_reverse.mcfunction'
    l=[]
    for part in MODEL_LIST:
        if part['reverse_tag']==None:
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck,tag=KB.' + BOSS_TAG + '] kb.rx_goal run data get storage kboss:temp temp.' + part['tag'] + '.rx' + '\n')
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck,tag=KB.' + BOSS_TAG + '] kb.ry_goal run data get storage kboss:temp temp.' + part['tag'] + '.ry -1' + '\n')
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck,tag=KB.' + BOSS_TAG + '] kb.rz_goal run data get storage kboss:temp temp.' + part['tag'] + '.rz -1' + '\n\n')
        else:
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck,tag=KB.' + BOSS_TAG + '] kb.rx_goal run data get storage kboss:temp temp.' + part['reverse_tag'] + '.rx' + '\n')
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck,tag=KB.' + BOSS_TAG + '] kb.ry_goal run data get storage kboss:temp temp.' + part['reverse_tag'] + '.ry -1' + '\n')
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck,tag=KB.' + BOSS_TAG + '] kb.rz_goal run data get storage kboss:temp temp.' + part['reverse_tag'] + '.rz -1' + '\n\n')
    l.append('data remove storage kboss:temp temp' + '\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    # dev/pose
    path = DIR +'functions/dev/' + BOSS_NAMESPACE + '/pose/'
    ## dev
    current_path = path
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    filename = 'dev.mcfunction'
    l=[]
    l.append('execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback\n')
    l.append('tellraw @a ""\n')
    l.append('tellraw @a "===================================================="\n')
    for part in MODEL_LIST:
        l.append('execute as @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] run tellraw @a [{"text":"' + part['tag'] + ':","color": "green"},{"text":"  <rx>","color": "yellow"},{"text":"[-]","clickEvent": {"action": "run_command","value": "/execute as @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] run function kboss:dev/' + BOSS_NAMESPACE + '/pose/rx/remove"},"color": "light_purple"},{"score":{"name": "@s","objective": "kb.rx"},"color": "aqua"},{"text":"[+]","clickEvent": {"action": "run_command","value": "/execute as @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] run function kboss:dev/' + BOSS_NAMESPACE + '/pose/rx/add"},"color": "light_purple"},{"text":"  <ry>","color": "yellow"},{"text":"[-]","clickEvent": {"action": "run_command","value": "/execute as @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] run function kboss:dev/' + BOSS_NAMESPACE + '/pose/ry/remove"},"color": "light_purple"},{"score":{"name": "@s","objective": "kb.ry"},"color": "aqua"},{"text":"[+]","clickEvent": {"action": "run_command","value": "/execute as @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] run function kboss:dev/' + BOSS_NAMESPACE + '/pose/ry/add"},"color": "light_purple"},{"text":"  <rz>","color": "yellow"},{"text":"[-]","clickEvent": {"action": "run_command","value": "/execute as @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] run function kboss:dev/' + BOSS_NAMESPACE + '/pose/rz/remove"},"color": "light_purple"},{"score":{"name": "@s","objective": "kb.rz"},"color": "aqua"},{"text":"[+]","clickEvent": {"action": "run_command","value": "/execute as @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] run function kboss:dev/' + BOSS_NAMESPACE + '/pose/rz/add"},"color": "light_purple"}]\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ## rx
    current_path = path + 'rx/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    ### add
    filename = 'add.mcfunction'
    l=[]
    l.append('execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback\n')
    l.append('scoreboard players add @s kb.rx 10\n')
    l.append('function kboss:dev/' + BOSS_NAMESPACE + '/pose/dev\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ### remove
    filename = 'remove.mcfunction'
    l=[]
    l.append('execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback\n')
    l.append('scoreboard players remove @s kb.rx 10\n')
    l.append('function kboss:dev/' + BOSS_NAMESPACE + '/pose/dev\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ## ry
    current_path = path + 'ry/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    ### add
    filename = 'add.mcfunction'
    l=[]
    l.append('execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback\n')
    l.append('scoreboard players add @s kb.ry 10\n')
    l.append('function kboss:dev/' + BOSS_NAMESPACE + '/pose/dev\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ### remove
    filename = 'remove.mcfunction'
    l=[]
    l.append('execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback\n')
    l.append('scoreboard players remove @s kb.ry 10\n')
    l.append('function kboss:dev/' + BOSS_NAMESPACE + '/pose/dev\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ## rz
    current_path = path + 'rz/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    ### add
    filename = 'add.mcfunction'
    l=[]
    l.append('execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback\n')
    l.append('scoreboard players add @s kb.rz 10\n')
    l.append('function kboss:dev/' + BOSS_NAMESPACE + '/pose/dev\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ### remove
    filename = 'remove.mcfunction'
    l=[]
    l.append('execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback\n')
    l.append('scoreboard players remove @s kb.rz 10\n')
    l.append('function kboss:dev/' + BOSS_NAMESPACE + '/pose/dev\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ## save
    current_path = path + 'save/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    filename = 'common.mcfunction'
    l=[]
    l.append('execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback\n')
    for part in MODEL_LIST:
        l.append('execute store result storage kboss:temp temp.' + part['tag'] + '.rx int 1 run scoreboard players get @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + ',limit=1] kb.rx\n')
        l.append('execute store result storage kboss:temp temp.' + part['tag'] + '.ry int 1 run scoreboard players get @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + ',limit=1] kb.ry\n')
        l.append('execute store result storage kboss:temp temp.' + part['tag'] + '.rz int 1 run scoreboard players get @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + ',limit=1] kb.rz\n\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ## summon
    current_path = path + 'summon/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    ### common
    filename = 'common.mcfunction'
    l=[]
    for part in MODEL_LIST:
        l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] kb.rx_goal run data get storage kboss:temp temp.' + part['tag'] + '.rx\n')
        l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] kb.ry_goal run data get storage kboss:temp temp.' + part['tag'] + '.ry\n')
        l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] kb.rz_goal run data get storage kboss:temp temp.' + part['tag'] + '.rz\n\n')
    l.append('data remove storage kboss:temp temp\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ### common_reverse
    filename = 'common_reverse.mcfunction'
    l=[]
    for part in MODEL_LIST:
        l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] kb.rx_goal run data get storage kboss:temp temp.' + part['tag'] + '.rx\n')
        if part['reverse_tag']==None:
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] kb.ry_goal run data get storage kboss:temp temp.' + part['tag'] + '.ry -1' + '\n')
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] kb.rz_goal run data get storage kboss:temp temp.' + part['tag'] + '.rz -1' + '\n\n')
        else:
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] kb.ry_goal run data get storage kboss:temp temp.' + part['reverse_tag'] + '.ry -1' + '\n')
            l.append('execute store result score @e[tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.' + BOSS_TAG + '] kb.rz_goal run data get storage kboss:temp temp.' + part['reverse_tag'] + '.rz -1' + '\n\n')
    l.append('data remove storage kboss:temp temp\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)

# settingsのHITBOX_LISTが空でないときに実行する処理
def when_hitbox_exist():
    path = DIR +'functions/system/boss/each/' + BOSS_NAMESPACE + '/'
    # ディレクトリが無ければ生成
    if not os.path.exists(path):
        os.makedirs(path)
    # hitbox
    ## main
    current_path = path + 'hitbox/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    filename = 'main.mcfunction'
    l=[]
    for part in HITBOX_LIST:
        l.append('execute if entity @s[tag=KB.' + part['tag'] + '] at @e[tag=KB.' + part['parent_skin'] + ',tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp @s ^' + str(part['tp'][0]) + ' ^' + str(part['tp'][1]) + ' ^' + str(part['tp'][2]) + '\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)

# 召喚用関数
def summon():
    path = DIR +'functions/system/boss/each/' + BOSS_NAMESPACE + '/'
    # ディレクトリが無ければ生成
    if not os.path.exists(path):
        os.makedirs(path)
    # summon
    ## common
    current_path = path + 'summon/' + BOSS_SIZE_NAMESPACE + '/'
    ### ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    filename = 'common.mcfunction'
    l=[]
    l.append('# Main\n')
    l.append('summon minecraft:marker ~ ~ ~ {Tags:["KB.' + str(BOSS_SIZE_TAG) + '","KB.Boss","KB.' + BOSS_TAG + '","KB.Main","KB.NewSummon"]}' + '\n')
    l.append('\n')
    if HITBOX_LIST:
        l.append('# HitBox\n')
        for part in HITBOX_LIST:
            l.append('## ' + part['tag'] + '\n')
            l.append('summon ' + part['entity'] + ' ~ ~ ~ {Size:' + str(part['Size']) + ',CustomName:\'\"' + str(BOSS_NAME) + '\"\',NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Tags:["KB.' + str(BOSS_SIZE_TAG) + '","KB.Size' + str(part['Size']) + '","KB.Boss","KB.' + BOSS_TAG + '","KB.' + part['tag'] + '","KB.HitBox","KB.NewSummon"],DeathLootTable:"minecraft:empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d},{Name:"minecraft:generic.max_health",Base:1024.0d},{Name:"minecraft:generic.armor",Base:0.0d}],Health:1024.0f,ArmorItems:[{},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}\n')
        l.append('\n')
    if MODEL_LIST:
        l.append('# Skin\n')
        for part in MODEL_LIST:
            l.append('## ' + part['tag'] + '\n')
            if USE_POSE_Z:
                temp = ',"KB.UsePoseZ"'
            else:
                temp = ''
            if ON_AEC:
                l.append('summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,WaitTime:0,Radius:0.000000001f,RadiusOnUse:0.0f,Potion:"minecraft:empty",RadiusPerTick:0.0f,Particle:"minecraft:block minecraft:air",DurationOnUse:0,Tags:["KB.' + str(BOSS_SIZE_TAG) + '","KB.Boss","KB.' + BOSS_TAG + '","KB.SkinPos","KB.NewSummon","KB.' + part['tag'] + '"' + temp + ', "KB.OnAEC"],Passengers:[{id:"' + MODEL_ENTITY['id'] + '",' + MODEL_ENTITY['nbt'] + ',Tags:["KB.' + str(BOSS_SIZE_TAG) + '","KB.Boss","KB.' + BOSS_TAG + '","KB.Skin","KB.NewSummon","KB.' + part['tag'] + '"' + temp + '],ArmorItems:[{},{},{},{id:"' + part['Head']['id'] + '",Count:1b,tag:{CustomModelData:' + str(part['Head']['CustomModelData']) + '}}]}]}\n')
            else:
                l.append('summon ' + MODEL_ENTITY['id'] + ' ~ ~ ~ {' + MODEL_ENTITY['nbt'] + ',Tags:["KB.' + str(BOSS_SIZE_TAG) + '","KB.Boss","KB.' + BOSS_TAG + '","KB.Skin","KB.NewSummon","KB.' + part['tag'] + '"' + temp + '],ArmorItems:[{},{},{},{id:"' + part['Head']['id'] + '",Count:1b,tag:{CustomModelData:' + str(part['Head']['CustomModelData']) + '}}]}\n')
    l.append('\n')
    l.append('function kboss:system/boss/each/common/summon\n')
    l.append('\n')
    l.append('execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.BossCheck,scores={kb.id=1}] run bossbar set kboss:health/1 name "' + BOSS_NAME + '"\n')
    l.append('execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.BossCheck,scores={kb.id=2}] run bossbar set kboss:health/2 name "' + BOSS_NAME + '"\n')
    l.append('execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.BossCheck,scores={kb.id=3}] run bossbar set kboss:health/3 name "' + BOSS_NAME + '"\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    ## normal
    filename = 'normal.mcfunction'
    l=[]
    l.append('scoreboard players set $temp kb.attack_damage 10\n')
    l.append('scoreboard players set $temp kb.max_health 100\n')
    l.append('function kboss:system/boss/each/' + BOSS_NAMESPACE + '/summon/' + BOSS_SIZE_NAMESPACE + '/common\n')
    if not START_ACTION == None:
        l.append('execute as @e[tag=KB.Main,tag=KB.BossCheck] run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/action/each/' + str(START_ACTION) + '/start\n')
    l.append('tag @e[tag=KB.BossCheck] remove KB.BossCheck\n')
    l.append('scoreboard players reset $temp\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    
    path = DIR +'functions/command/summon/' + BOSS_NAMESPACE + '/'
    current_path = path
    # ディレクトリが無ければ生成
    if not os.path.exists(path):
        os.makedirs(path)
    # normal
    filename = 'normal.mcfunction'
    l=[]
    l.append('function kboss:system/boss/each/' + BOSS_NAMESPACE + '/summon/' + BOSS_SIZE_NAMESPACE + '/normal\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)

# ポーズ
def pose():
    path = DIR +'functions/system/boss/each/' + BOSS_NAMESPACE + '/pose/'
    for pose in POSE_LIST:
        current_path = path + pose['name'] + '/'
        if not pose['var']==None:
            current_path += pose['var'] + '/'
        # ディレクトリが無ければ生成
        if not os.path.exists(current_path):
            os.makedirs(current_path)
        for phase in pose['phase']:
            current_path = path + pose['name'] + '/'
            if not pose['var']==None:
                current_path += pose['var'] + '/'
            filename = phase['name'] + '.mcfunction'
            l= []
            if pose['var']==None:
                l.append('data modify storage kboss:temp temp set from storage kboss:pose ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + phase['name'] + '\n')
            else:
                l.append('data modify storage kboss:temp temp set from storage kboss:pose ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + pose['var'] + '.' + phase['name'] + '\n')
            l.append('scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drx ' + str(phase['speed']['base'][0]) + '\n')
            l.append('scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.dry ' + str(phase['speed']['base'][1]) + '\n')
            l.append('scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drz ' + str(phase['speed']['base'][2]) + '\n')
            if 'each' in phase['speed']:
                for part in phase['speed']['each']:
                    if not part['value'][0]==None:
                        if part['value'][0] > 0:
                            l.append('scoreboard players set @e[distance=..16,tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck] kb.drx ' + str(part['value'][0]) + '\n')
                    if not part['value'][1]==None:
                        if part['value'][1] > 0:
                            l.append('scoreboard players set @e[distance=..16,tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck] kb.dry ' + str(part['value'][1]) + '\n')
                    if not part['value'][2]==None:
                        if part['value'][2] > 0:
                            l.append('scoreboard players set @e[distance=..16,tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck] kb.drz ' + str(part['value'][2]) + '\n')
            l.append('function kboss:system/boss/each/' + BOSS_NAMESPACE + '/pose/common\n')
            with open(current_path + filename, mode='w', encoding='utf-8') as f:
                f.writelines(l)
            # var == 'right' or 'left' のとき、逆を生成
            if (pose['var']=='right' or pose['var']=='left'):
                l= []
                if pose['var']=='right':
                    current_path = path + pose['name'] + '/left/'
                    l.append('data modify storage kboss:temp temp set from storage kboss:pose ' + BOSS_NAMESPACE + '.' + pose['name'] + '.right.' + phase['name'] + '\n')
                else:
                    current_path = path + pose['name'] + '/right/'
                    l.append('data modify storage kboss:temp temp set from storage kboss:pose ' + BOSS_NAMESPACE + '.' + pose['name'] + '.left.' + phase['name'] + '\n')
                # ディレクトリが無ければ生成
                if not os.path.exists(current_path):
                    os.makedirs(current_path)
                l.append('scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drx ' + str(phase['speed']['base'][0]) + '\n')
                l.append('scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.dry ' + str(phase['speed']['base'][1]) + '\n')
                l.append('scoreboard players set @e[distance=..16,tag=KB.Skin,tag=KB.BossCheck] kb.drz ' + str(phase['speed']['base'][2]) + '\n')
                if 'each' in phase['speed']:
                    for part in phase['speed']['each']:
                        l.append('scoreboard players set @e[distance=..16,tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck] kb.drx ' + str(part['value'][0]) + '\n')
                        l.append('scoreboard players set @e[distance=..16,tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck] kb.dry ' + str(part['value'][1]) + '\n')
                        l.append('scoreboard players set @e[distance=..16,tag=KB.' + part['tag'] + ',tag=KB.Skin,tag=KB.BossCheck] kb.drz ' + str(part['value'][2]) + '\n')
                l.append('function kboss:system/boss/each/' + BOSS_NAMESPACE + '/pose/common_reverse\n')
                with open(current_path + filename, mode='w', encoding='utf-8') as f:
                    f.writelines(l)
    path = DIR +'functions/dev/' + BOSS_NAMESPACE + '/pose/save/'
    for pose in POSE_LIST:
        current_path = path + pose['name'] + '/'
        if not pose['var']==None:
            current_path += pose['var'] + '/'
        # ディレクトリが無ければ生成
        if not os.path.exists(current_path):
            os.makedirs(current_path)
        for phase in pose['phase']:
            filename = phase['name'] + '.mcfunction'
            l= []
            l.append('execute unless data storage kboss:settings sendCommandFeedback run function kboss:system/sendcommandfeedback\n')
            if pose['var']==None:
                l.append('tellraw @s [{"text":"ポーズ: ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + phase['name'] + 'を保存しますか? "},{"text":"[保存する]","color": "light_purple","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/save/' + pose['name'] + '/' + phase['name'] + '_sub"}}]\n')
            else:
                l.append('tellraw @s [{"text":"ポーズ: ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + pose['var'] + '.' + phase['name'] + 'を保存しますか? "},{"text":"[保存する]","color": "light_purple","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/save/' + pose['name'] + '/' + pose['var'] + '/' + phase['name'] + '_sub"}}]\n')
            with open(current_path + filename, mode='w', encoding='utf-8') as f:
                f.writelines(l)
            filename = phase['name'] + '_sub.mcfunction'
            l= []
            l.append('function kboss:dev/' + BOSS_NAMESPACE + '/pose/save/common\n')
            if pose['var']==None:
                l.append('data modify storage kboss:pose ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + phase['name'] + ' merge from storage kboss:temp temp\n')
                l.append('data remove storage kboss:temp temp\n')
                l.append('tellraw @s [{"text":"ポーズ: ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + phase['name'] + 'を保存しました。","color": "yellow"}]\n')
            else:
                l.append('data modify storage kboss:pose ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + pose['var'] + '.' + phase['name'] + ' merge from storage kboss:temp temp\n')
                l.append('data remove storage kboss:temp temp\n')
                l.append('tellraw @s [{"text":"ポーズ: ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + pose['var'] + '.' + phase['name'] + 'を保存しました。","color": "yellow"}]\n')
            with open(current_path + filename, mode='w', encoding='utf-8') as f:
                f.writelines(l)
    path = DIR +'functions/dev/' + BOSS_NAMESPACE + '/pose/summon/'
    for pose in POSE_LIST:
        current_path = path + pose['name'] + '/'
        if not pose['var']==None:
            current_path += pose['var'] + '/'
        # ディレクトリが無ければ生成
        if not os.path.exists(current_path):
            os.makedirs(current_path)
        for phase in pose['phase']:
            filename = phase['name'] + '.mcfunction'
            l= []
            if pose['var']==None:
                l.append('data modify storage kboss:temp temp set from storage kboss:pose ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + phase['name'] + '\n')
            else:
                l.append('data modify storage kboss:temp temp set from storage kboss:pose ' + BOSS_NAMESPACE + '.' + pose['name'] + '.' + pose['var'] + '.' + phase['name'] + '\n')
            l.append('scoreboard players set @e[tag=KB.Skin] kb.drx 1\n')
            l.append('scoreboard players set @e[tag=KB.Skin] kb.dry 1\n')
            l.append('scoreboard players set @e[tag=KB.Skin] kb.drz 1\n')
            l.append('function kboss:dev/' + BOSS_NAMESPACE + '/pose/summon/common\n')
            with open(current_path + filename, mode='w', encoding='utf-8') as f:
                f.writelines(l)

# 本
def book():
    path = DIR +'functions/command/book/'
    current_path = path
    # ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    filename = BOSS_NAMESPACE + '.mcfunction'
    l = []
    book_pages = []
    page_num = 0
    # Main Page
    page_num += 1
    book_lines = '[""'
    book_lines += ',{"text":"' + BOSS_NAME + '","bold":true,"underlined":true}'
    book_lines += ',{"text":"\\n\\n"}'
    book_lines += ',{"text":"☠"},{"text":"[ボスをすべてkill]\\n","color":"light_purple","clickEvent": {"action": "run_command","value": "/function kboss:dev/kill"}}'
    book_lines += ',{"text":"\\n"}'
    book_lines += ',{"text":"⏣","bold":true},{"text":"[' + BOSS_NAME + 'を召喚する]\\n","color":"light_purple","clickEvent": {"action": "run_command","value": "/function kboss:system/boss/each/' + BOSS_NAMESPACE + '/summon/' + BOSS_SIZE_NAMESPACE + '/normal"}}'
    book_lines += ',{"text":"\\n"}'
    book_lines += ',{"text":"⟱⟰"},{"text":"[ポーズの保存/呼出]\\n","color":"light_purple","clickEvent": {"action": "change_page","value":"2"}}'
    book_lines += ',{"text":"\\n"}'
    book_lines += ',{"text":"✎","bold":true},{"text":"[ポーズの編集]\\n","color":"light_purple","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/dev"}}'
    book_lines += ',{"text":"\\n"}'
    book_lines += ']'
    book_pages.append(book_lines)
    # Pose Main Page
    page_num += 1
    book_lines = '[""'
    book_lines += ',{"text":"' + BOSS_NAME + '","bold":true,"underlined":true}'
    book_lines += ',{"text":"\\n\\n"}'
    book_lines += ',{"text":"[メインぺージへ]\\n","color":"light_purple","clickEvent": {"action": "change_page","value":"1"}}'
    book_lines += ',{"text":"------------------\\n"}'
    book_lines += ',{"text":"ポーズ一覧:\\n"}'
    i = page_num + 1
    for pose in POSE_LIST:
        if pose['var']==None:
            book_lines += ',{"text":"[' + pose['name'] +  ']\\n","color":"light_purple","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/book/' + pose['name'] + '"}}'
        else:
            book_lines += ',{"text":"[' + pose['name'] + '.' + pose['var'] +  ']\\n","color":"light_purple","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/book/' + pose['name'] + '/' + pose['var'] + '"}}'
    book_lines += ',{"text":"\\n"}'
    book_lines += ']'
    book_pages.append(book_lines)
    l.append('give @s written_book{pages:' + str(book_pages) + ',author:"",title:"' + BOSS_NAME + ' manager"}\n')
    with open(current_path + filename, mode='w', encoding='utf-8') as f:
        f.writelines(l)
    
    # each pose book
    path = DIR +'functions/dev/' + BOSS_NAMESPACE + '/pose/book/'
    current_path = path
    # ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    for pose in POSE_LIST:
        l = []
        book_pages = []
        if pose['var'] == None:
            temp = ''
        else:
            temp = '/' + pose['var']
            if not os.path.exists(current_path + '/' + pose['name'] + '/'):
                os.makedirs(current_path + '/' + pose['name'] + '/')
        filename = pose['name'] + temp + '.mcfunction'
        book_lines = '[""'
        book_lines += ',{"text":"' + BOSS_NAME + '","bold":true,"underlined":true}'
        book_lines += ',{"text":"\\n\\n"}'
        book_lines += ',{"text":"[ポーズの編集]\\n","color":"light_purple","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/dev"}}'
        book_lines += ',{"text":"\\n"}'
        if pose['var']==None:
            book_lines += ',{"text":"Pose:"},{"text":"' + pose['name'] + '","color":"blue"}'
        else:
            book_lines += ',{"text":"Pose:"},{"text":"' + pose['name'] + '.' + pose['var'] + '","color":"blue"}'
        book_lines += ',{"text":"\\n"}'
        for phase in pose['phase']:
            book_lines += ',{"text":"\\n"}'
            book_lines += ',{"text":"' + phase['name'] + ':\\n"}'
            if pose['var']==None:
                book_lines += ',{"text":"呼び出す"},{"text":"[⟰]","color":"dark_aqua","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/summon/' + pose['name'] + '/' + phase['name'] + '"}}'
            else:
                book_lines += ',{"text":"呼び出す"},{"text":"[⟰]","color":"dark_aqua","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/summon/' + pose['name'] + '/' + pose['var'] + '/' + phase['name'] + '"}}'
            book_lines += ',{"text":"/"}'
            if pose['var']==None:
                book_lines += ',{"text":"保存する"},{"text":"[⟱]","color":"green","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/save/' + pose['name'] + '/' + phase['name'] + '"}}'
            else:
                book_lines += ',{"text":"保存する"},{"text":"[⟱]","color":"green","clickEvent": {"action": "run_command","value": "/function kboss:dev/' + BOSS_NAMESPACE + '/pose/save/' + pose['name'] + '/' + pose['var'] + '/' + phase['name'] + '"}}'
        book_lines += ']'
        book_pages.append(book_lines)
        if pose['var'] == None:
            temp =''
        else:
            temp = '.' + pose['var']
        l.append('give @s written_book{pages:' + str(book_pages) + ',author:"",title:"' + BOSS_NAME + ' <' + pose['name'] + temp + '> manager"}\n')
        with open(current_path + filename, mode='w', encoding='utf-8') as f:
            f.writelines(l)

# アクション
def action():
    path = DIR +'functions/system/boss/each/' + BOSS_NAMESPACE + '/action/'
    current_path = path
    # ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    # main
    filename = 'main.mcfunction'
    if REGENERATE_ACTION or not os.path.exists(current_path + filename):
        l = []
        l.append('execute if score @s kb.action_time matches 1.. run scoreboard players remove @s kb.action_time 1\n')
        l.append('execute if score @s kb.anime_time matches 1.. run scoreboard players remove @s kb.anime_time 1\n')
        l.append('\n')
        if ACTION_LIST:
            for action in ACTION_LIST:
                l.append('# ' + str(action['id']) + ':' + str(action['name']) + '\n')
            l.append('execute if score @s kb.action matches ' + str(action['id']) + ' run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/action/each/' + str(action['id']) + '/main\n')
        with open(current_path + filename, mode='w', encoding='utf-8') as f:
            f.writelines(l)
    # each
    current_path = path + 'each/'
    # ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    if ACTION_LIST:
        for action in ACTION_LIST:
            current_path = path + 'each/' + str(action['id']) + '/'
            if not os.path.exists(current_path):
                os.makedirs(current_path)
            filename = 'main.mcfunction'
            if REGENERATE_ACTION or not os.path.exists(current_path + filename):
                l = []
                l.append('# ' + str(action['id']) + ':' + str(action['name']) + '\n')
                l.append('\n')
                l.append('execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/action/each/' + str(action['id']) + '/finish\n')
                with open(current_path + filename, mode='w', encoding='utf-8') as f:
                    f.writelines(l)
            filename = 'finish.mcfunction'
            if REGENERATE_ACTION or not os.path.exists(current_path + filename):
                l = []
                with open(current_path + filename, mode='w', encoding='utf-8') as f:
                    f.writelines(l)
            filename = 'start.mcfunction'
            if REGENERATE_ACTION or not os.path.exists(current_path + filename):
                l = []
                l.append('# ' + str(action['id']) + ':' + str(action['name']) + '\n')
                l.append('\n')
                l.append('scoreboard players set @s kb.action ' + str(action['id']) + '\n')
                l.append('scoreboard players set @s kb.action_sub 1\n')
                l.append('scoreboard players set @s kb.action_time 100\n')
                with open(current_path + filename, mode='w', encoding='utf-8') as f:
                    f.writelines(l)
    current_path = path + 'select/'
    # ディレクトリが無ければ生成
    if not os.path.exists(current_path):
        os.makedirs(current_path)
    # main
    filename = 'random.mcfunction'
    if REGENERATE_ACTION or not os.path.exists(current_path + filename):
        l = []
        n = len(ACTION_LIST)
        l.append('scoreboard players set $random_ways kb.temp ' + str(n) + '\n')
        l.append('function kboss:system/random/main\n')
        l.append('\n')
        if ACTION_LIST:
            i = 0
            for action in ACTION_LIST:
                l.append('# ' + str(action['id']) + ':' + str(action['name']) + '\n')
                l.append('execute if score $random kb.temp matches ' + str(i) + ' run function kboss:system/boss/each/' + BOSS_NAMESPACE + '/action/each/' + str(action['id']) + '/start\n')
                i += 1
        with open(current_path + filename, mode='w', encoding='utf-8') as f:
            f.writelines(l)

# 各ボスへの分岐処理に追加
append_jump_path()

# settingsのMODEL_LISTが空でないときに実行する処理
if MODEL_LIST:
    when_model_exist()

# settingsのHITBOX_LISTが空でないときに実行する処理
if HITBOX_LIST:
    when_hitbox_exist()

# 召喚用関数
summon()

# ポーズ
if POSE_LIST:
    pose()

# 本
book()

# アクション
action()
