
# 叩く(右)

function kboss:system/boss/each/martellos/pose/knock/right/1

scoreboard players set @s kb.action 7
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 30

tag @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

# 攻撃力
execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
