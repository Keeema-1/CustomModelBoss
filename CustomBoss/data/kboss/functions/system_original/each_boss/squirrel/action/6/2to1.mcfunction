
function kboss:system/each_boss/squirrel/pose/tackle/right/1

function kboss:system/each_boss/squirrel/model/mouth/open

scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 80


tag @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack

execute as @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
