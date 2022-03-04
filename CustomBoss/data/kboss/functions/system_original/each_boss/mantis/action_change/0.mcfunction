
# 無

function kboss:system/each_boss/mantis/pose/normal/1

scoreboard players set @s kb.action 0
scoreboard players set @s kb.action_sub -1

scoreboard players set @s kb.action_time 10
scoreboard players set @s kb.anime_time -1

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.ReachAdd1
tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack

execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

# 攻撃力
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.25 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_knockback"}].Base double 0.5 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
