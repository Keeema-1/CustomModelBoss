
function kboss:system/each_boss/squirrel/pose/bite/right/2

function kboss:system/each_boss/squirrel/model/mouth/large_open

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 10

data merge entity @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:0b,wasOnGround:1b}

playsound minecraft:entity.panda.bite hostile @a ~ ~ ~ 2 1

tag @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck,limit=1] add KB.Attack
