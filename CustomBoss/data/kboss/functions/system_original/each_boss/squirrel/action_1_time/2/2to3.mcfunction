
#tp ^ ^ ^1

function kboss:system/each_boss/squirrel/pose/bite/front/3

scoreboard players set @s kb.action_sub 3

scoreboard players set @s kb.action_time 15

data merge entity @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck,limit=1] {NoAI:0b,wasOnGround:1b,OnGround:1b}

#summon magma_cube ~ ~ ~ {OnGround}
