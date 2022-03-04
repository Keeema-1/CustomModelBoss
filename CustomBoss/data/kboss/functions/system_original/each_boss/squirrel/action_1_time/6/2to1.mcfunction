
function kboss:system/each_boss/squirrel/pose/tackle/right/1

function kboss:system/each_boss/squirrel/model/mouth/open

scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 40

data merge entity @e[distance=..16,tag=KB.Body1,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:1b}
data merge entity @e[distance=..16,tag=KB.Body2,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:1b}
data merge entity @e[distance=..16,tag=KB.Tail1,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:1b}
