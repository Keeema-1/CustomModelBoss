
# 疲労

function kboss:system/each_boss/squirrel/pose/normal/1

scoreboard players set @s kb.action 13
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 200
scoreboard players set @s kb.anime_time 40

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

tag @s remove KB.Tired
