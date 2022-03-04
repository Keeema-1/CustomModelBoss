
function kboss:system/each_boss/mantis/pose/turn/right/6

scoreboard players set @s kb.action_sub 6

scoreboard players set @s kb.anime_time 3

playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 2 0

execute positioned as @e[distance=..16,tag=KB.FrontRightLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock
execute positioned as @e[distance=..16,tag=KB.BackLeftLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock


tag @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack

tag @e[distance=..16,tag=KB.BackRightLeg,tag=KB.AI,tag=KB.BossCheck] add KB.Attack
tag @e[distance=..16,tag=KB.FrontLeftLeg,tag=KB.AI,tag=KB.BossCheck] add KB.Attack

execute as @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

