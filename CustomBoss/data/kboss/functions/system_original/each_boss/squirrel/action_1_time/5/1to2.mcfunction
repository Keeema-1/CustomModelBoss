
function kboss:system/each_boss/squirrel/pose/tackle/right/2

function kboss:system/each_boss/squirrel/model/mouth/large_open

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 20

data merge entity @e[distance=..16,tag=KB.Body1,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:0b}
data merge entity @e[distance=..16,tag=KB.Body2,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:0b}
data merge entity @e[distance=..16,tag=KB.Tail1,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:0b}

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0
