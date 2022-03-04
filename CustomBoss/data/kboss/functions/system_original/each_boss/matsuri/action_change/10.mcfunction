
# 右回転

function kboss:system/each_boss/matsuri/pose/rotate/right/1

scoreboard players set @s kb.action 10
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 30

playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.7


tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.ReachAdd1
tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack

execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

# 攻撃力
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.75 run scoreboard players get @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] kb.attack_damage
