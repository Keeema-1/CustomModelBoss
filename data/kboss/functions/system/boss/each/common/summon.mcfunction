
# id
scoreboard players set $temp kb.id 0
execute as @e[tag=KB.NewSummon,type=minecraft:marker,tag=KB.Main] run function kboss:system/boss/each/common/give_id

scoreboard players operation @e[tag=KB.NewSummon] kb.attack_damage = $temp kb.attack_damage
scoreboard players operation @e[tag=KB.NewSummon,type=minecraft:marker,tag=KB.Main] kb.max_health = $temp kb.max_health
scoreboard players operation @e[tag=KB.NewSummon,type=minecraft:marker,tag=KB.Main] kb.angry_time = $temp kb.angry_time
scoreboard players operation @e[tag=KB.NewSummon,type=minecraft:marker,tag=KB.Main] kb.angry_border = $temp kb.angry_border
scoreboard players operation @e[tag=KB.NewSummon,type=minecraft:marker,tag=KB.Main] kb.last_angry_health = $temp kb.max_health

execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,scores={kb.id=1}] run bossbar set kboss:health/1 visible true
execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,scores={kb.id=1}] run execute store result bossbar kboss:health/1 max run scoreboard players get @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,limit=1] kb.max_health
execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,scores={kb.id=1}] run bossbar set kboss:health/1 players @a

execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,scores={kb.id=1}] run bossbar set kboss:health/1 visible true
execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,scores={kb.id=2}] run bossbar set kboss:health/2 players @a
execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,scores={kb.id=2}] run execute store result bossbar kboss:health/2 max run scoreboard players get @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,limit=1] kb.max_health

execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,scores={kb.id=1}] run bossbar set kboss:health/1 visible true
execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,scores={kb.id=3}] run bossbar set kboss:health/3 players @a
execute if entity @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,scores={kb.id=3}] run execute store result bossbar kboss:health/3 max run scoreboard players get @e[type=minecraft:marker,tag=KB.Main,tag=KB.NewSummon,limit=1] kb.max_health

team join kb.boss @e[tag=KB.NewSummon]

tag @e[tag=KB.NewSummon] add KB.BossCheck

tag @e[tag=KB.NewSummon] remove KB.NewSummon
