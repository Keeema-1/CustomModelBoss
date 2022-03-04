
function kboss:system/each_boss/platypus/pose/bite/front/3

scoreboard players set @s kb.action_sub 3

scoreboard players set @s kb.action_time 20

particle minecraft:sweep_attack ^ ^1 ^4 0.1 0.1 0.1 1.5 3
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1
playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 2 1.5
