
# 回転土飛ばし(左)

function kboss:system/boss/each/martellos/pose/rotate/left/1

scoreboard players set @s kb.action 20
scoreboard players set @s kb.action_sub 1

execute if entity @s[tag=!KB.Angry] run scoreboard players set @s kb.action_time 20
execute if entity @s[tag=KB.Angry] run scoreboard players set @s kb.action_time 15

tag @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

# 攻撃力
execute as @e[distance=..16,tag=KB.HitBox,tag=!KB.Hummer,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
execute as @e[distance=..16,tag=KB.HitBox,tag=KB.Hummer,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.75 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
execute if entity @s[tag=KB.Angry] run function kboss:system/boss/each/martellos/action/angry/attack_damage