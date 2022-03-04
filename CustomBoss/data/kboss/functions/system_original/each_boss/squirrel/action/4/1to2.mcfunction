
function kboss:system/each_boss/squirrel/pose/bite/left/2

function kboss:system/each_boss/squirrel/model/mouth/large_open

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 20


tag @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack

tag @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck] add KB.Attack

execute as @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

playsound minecraft:entity.panda.bite hostile @a ~ ~ ~ 2 1
