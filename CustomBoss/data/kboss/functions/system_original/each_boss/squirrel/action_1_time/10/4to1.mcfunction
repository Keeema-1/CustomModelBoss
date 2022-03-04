
function kboss:system/each_boss/squirrel/pose/jump/1

function kboss:system/each_boss/squirrel/model/mouth/open

scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 30

tag @e[distance=..16,tag=KB.Tail,tag=KB.AI,tag=KB.BossCheck,limit=1] remove KB.Attack
data merge entity @e[distance=..16,tag=KB.Tail,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:1b}
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {Invulnerable:0b}
