
scoreboard players set $system kb.attack_damage 5
scoreboard players set $system kb.max_health 600
scoreboard players set $system kb.angry_time 1800


summon minecraft:marker ~ ~ ~ {Tags:["KB.SpawnPos"]}

execute at @e[tag=KB.SpawnPos] positioned ~ ~ ~ run function kboss:system/summon/squirrel/skin_pos/sub

kill @e[tag=KB.SpawnPos]

# 辺りを見渡す
execute as @e[tag=KB.Main,tag=KB.BossCheck] run function kboss:system/each_boss/squirrel/action_change/12

# エリア
scoreboard players operation @e[tag=KB.Main,tag=KB.BossCheck] island = $temp island
scoreboard players operation @e[tag=KB.Main,tag=KB.BossCheck] area = $temp area

tag @e[tag=KB.NewSummon] remove KB.BossCheck
tag @e[tag=KB.NewSummon] remove KB.NewSummon
