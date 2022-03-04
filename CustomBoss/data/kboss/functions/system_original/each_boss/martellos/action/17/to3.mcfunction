
function kboss:system/each_boss/martellos/pose/rotate/right/1

scoreboard players set @s kb.action_sub 3

scoreboard players set @s kb.anime_time 20

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.AI,tag=KB.Body,tag=KB.BossCheck] add KB.Attack
tag @e[distance=..16,tag=KB.AI,tag=KB.Tail3,tag=KB.BossCheck] add KB.Attack
execute as @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
