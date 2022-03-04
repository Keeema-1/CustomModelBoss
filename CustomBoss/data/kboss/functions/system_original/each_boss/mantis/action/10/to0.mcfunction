
#function kboss:system/each_boss/mantis/pose/breath/front
#function kboss:system/each_boss/mantis/pose/dive/2
function kboss:system/each_boss/mantis/pose/run/0

scoreboard players set @s kb.action_sub 0

scoreboard players set @s kb.action_time 20

playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0
playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0

playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 2 1.3
#playsound minecraft:entity.dolphin.attack hostile @a ~ ~ ~ 2 0.5
#playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.7
#playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.9
playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0
