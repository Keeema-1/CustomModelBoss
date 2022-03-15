
# 揺れる

function kboss:system/boss/each/martellos/pose/shake/1

scoreboard players set @s kb.action 16
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.anime_time 3
scoreboard players set @s kb.action_time 20

tag @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] remove KB.ReachAdd1
tag @e[distance=..16,tag=KB.HitBox,tag=KB.Body,tag=KB.BossCheck] add KB.Attack

execute as @e[distance=..16,tag=KB.HitBox,tag=KB.Attack,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}

# 攻撃力
execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.25 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage