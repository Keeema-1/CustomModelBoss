
# 各ボス
execute as @e[tag=KB.Main,tag=KB.Boss] at @s run function kboss:system/boss/general/main

#kill @e[tag=KB.Boss,tag=!KB.AlreadyProcessed]
tag @e[tag=KB.AlreadyProcessed] remove KB.AlreadyProcessed

data remove storage kboss:temp check
