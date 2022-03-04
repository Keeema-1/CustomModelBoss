
function kboss:system/each_boss/squirrel/pose/jump/2

function kboss:system/each_boss/squirrel/model/mouth/open

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 10

execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,wasOnGround:1b,Invulnerable:1b}

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck,limit=1] add KB.Attack

#playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0

playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 2 0
