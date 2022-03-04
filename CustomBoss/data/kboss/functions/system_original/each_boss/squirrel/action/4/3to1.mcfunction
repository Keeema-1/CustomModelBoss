
function kboss:system/each_boss/squirrel/pose/bite/right/1

function kboss:system/each_boss/squirrel/model/mouth/open

scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 80

tag @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck,limit=1] remove KB.Attack
data merge entity @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:1b}
