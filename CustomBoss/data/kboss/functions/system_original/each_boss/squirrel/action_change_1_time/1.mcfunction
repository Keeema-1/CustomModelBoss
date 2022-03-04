
# 歩行

function kboss:system/each_boss/squirrel/pose/walk/1

function kboss:system/each_boss/squirrel/model/mouth/open

scoreboard players set @s kb.action 1
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.anime_time 10
scoreboard players set @s kb.action_time 200

# 攻撃力
execute as @e[distance=..16,tag=KB.BossCheck,tag=KB.AI] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @e[distance=..1,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
