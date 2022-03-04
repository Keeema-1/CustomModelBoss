
function kboss:system/each_boss/squirrel/pose/jump/4

function kboss:system/each_boss/squirrel/model/mouth/open

scoreboard players set @s kb.action_sub 4

scoreboard players set @s kb.action_time 20

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck,limit=1] remove KB.Attack
#execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
