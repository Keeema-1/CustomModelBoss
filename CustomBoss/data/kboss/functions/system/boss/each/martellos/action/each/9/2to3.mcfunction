
function kboss:system/boss/each/martellos/pose/knock/tail/3

scoreboard players set @s kb.action_sub 3

scoreboard players set @s kb.action_time 10

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
