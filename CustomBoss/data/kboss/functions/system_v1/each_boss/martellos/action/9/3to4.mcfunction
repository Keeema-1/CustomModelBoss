
function kboss:system/each_boss/martellos/pose/knock/tail/4

scoreboard players set @s kb.action_sub 4

scoreboard players set @s kb.action_time 20

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.Tail3,tag=KB.AI,tag=KB.BossCheck] add KB.Attack
execute as @e[distance=..16,tag=KB.Tail3,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
