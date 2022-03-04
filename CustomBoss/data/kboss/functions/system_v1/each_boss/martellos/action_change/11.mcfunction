
# ステップ(左)

function kboss:system/each_boss/martellos/pose/step/left/1

scoreboard players set @s kb.action 11
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 20

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.ReachAdd1
tag @e[distance=..16,tag=KB.AI,tag=KB.Body,tag=KB.BossCheck] add KB.Attack

execute as @e[distance=..16,tag=KB.AI,tag=KB.Attack,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:0b}

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0

# 攻撃力
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.25 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
