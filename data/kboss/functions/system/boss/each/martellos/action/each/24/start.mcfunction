
# 威嚇

function kboss:system/boss/each/martellos/pose/bark/1_fast

scoreboard players set @s kb.action 24
scoreboard players set @s kb.action_sub 0

scoreboard players set @s kb.action_time 100

tag @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.8
playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.6
