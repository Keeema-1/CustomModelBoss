
# 走る

function kboss:system/each_boss/platypus/pose/run/1

scoreboard players set @s kb.action 2
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 200
scoreboard players set @s kb.anime_time 8

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:0b}
