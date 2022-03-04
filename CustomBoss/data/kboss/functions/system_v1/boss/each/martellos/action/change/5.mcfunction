
# 右にターン

function kboss:system/boss/each/martellos/pose/turn/right/1

scoreboard players set @s kb.action 5
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 20

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
#tag @e[distance=..16,tag=KB.AI,tag=KB.Body2,tag=KB.BossCheck] add KB.Attack
execute as @e[distance=..16,tag=KB.AI,tag=!KB.Attack,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute as @e[distance=..16,tag=KB.AI,tag=KB.Attack,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}

# 攻撃力
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.25 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
