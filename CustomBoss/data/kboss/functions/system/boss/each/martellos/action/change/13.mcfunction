
# タックル(右)

function kboss:system/boss/each/martellos/pose/tackle/left/1

scoreboard players set @s kb.action 13
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 25

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.ReachAdd1
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

#playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0

# 攻撃力
execute as @e[distance=..16,tag=KB.AI,tag=!KB.Hummer,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.5 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
execute as @e[distance=..16,tag=KB.AI,tag=KB.Hummer,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.25 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
