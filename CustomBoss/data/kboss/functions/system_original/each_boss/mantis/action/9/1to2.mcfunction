
function kboss:system/each_boss/mantis/pose/breath/front

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 40

execute at @e[distance=..16,tag=KB.Head,limit=1] positioned ~ ~2 ~ run function kboss:system/each_boss/platypus/action/common/water_bullet/1
playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 2 0.8
playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 2 1.5
