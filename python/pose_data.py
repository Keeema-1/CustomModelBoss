import os
import json
import general_settings
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

path = './storage.json'

lines = []

with open(path, encoding='utf-8') as f:
    input = json.load(f)
    boss = input["data"]["contents"]["pose"][BOSS_NAMESPACE]
    for pose_name in boss:
        pose = boss[pose_name]
        lines.append('data modify storage kboss:pose ' + BOSS_NAMESPACE + ' set value {' + pose_name + ':' + str(pose) + '}\n')

path = DIR +'functions/system/pose_data/'
if not os.path.exists(path):
    os.makedirs(path)
filename = BOSS_NAMESPACE + '.mcfunction'
with open(path + filename, mode='w', encoding='utf-8') as f:
    f.writelines(lines)
