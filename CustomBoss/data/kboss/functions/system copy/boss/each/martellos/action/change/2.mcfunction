
# 見渡す

function kboss:system/boss/each/martellos/pose/look_around/1

scoreboard players set @s kb.action 2
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 60

execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

tag @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack

# 攻撃力
execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.25 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage