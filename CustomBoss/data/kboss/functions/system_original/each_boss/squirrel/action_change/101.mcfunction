
# ムービー

function kboss:system/each_boss/squirrel/pose/walk/1

scoreboard players set @s kb.action 101
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 800
scoreboard players set @s kb.anime_time 20

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

#tp @e[tag=KB.BossCheck] -1399 71 1445 90 0
