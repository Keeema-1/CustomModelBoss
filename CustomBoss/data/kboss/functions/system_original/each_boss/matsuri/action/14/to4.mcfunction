
function kboss:system/each_boss/matsuri/pose/step/back/1

scoreboard players set @s kb.action_sub 4

scoreboard players set @s kb.action_time 20

particle minecraft:poof ^ ^ ^3 1 0 1 0 20

playsound minecraft:entity.ravager.step block @a ~ ~ ~ 2 0
playsound minecraft:entity.ravager.step block @a ~ ~ ~ 2 0
