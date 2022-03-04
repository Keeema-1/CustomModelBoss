
# ダイブ

function kboss:system/each_boss/mantis/pose/dive/1

scoreboard players set @s kb.action 7
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 30
scoreboard players set @s kb.anime_time -1

playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 2 1.3
playsound minecraft:entity.dolphin.attack hostile @a ~ ~ ~ 2 0.5
#playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.7
playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.9
playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0

# 攻撃力
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.75 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run attribute @s generic.attack_knockback base set 1.0
