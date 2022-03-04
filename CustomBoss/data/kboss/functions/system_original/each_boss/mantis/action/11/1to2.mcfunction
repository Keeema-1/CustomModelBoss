
function kboss:system/each_boss/mantis/pose/sting/right/2
function kboss:system/each_boss/mantis/pose/mouth/open

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 55

playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0
playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0

playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 2 1.3
#playsound minecraft:entity.dolphin.attack hostile @a ~ ~ ~ 2 0.5
#playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.7
#playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.9
playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0


tag @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack

tag @e[distance=..16,tag=KB.RightArm,tag=KB.AI,tag=KB.BossCheck] add KB.Attack
tag @e[distance=..16,tag=KB.RightArm,tag=KB.AI,tag=KB.BossCheck] add KB.ReachAdd1

execute as @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

