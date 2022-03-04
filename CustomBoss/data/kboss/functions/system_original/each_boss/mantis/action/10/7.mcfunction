
execute if score @s kb.action_time matches 21.. rotated ~ 0 run tp @s ^ ^ ^0.6
execute if score @s kb.action_time matches 11.. rotated ~ 0 run tp @s ^ ^ ^0.4
execute if score @s kb.action_time matches ..10 rotated ~ 0 run tp @s ^ ^ ^0.2

particle minecraft:block minecraft:dirt ~ ~1 ~ 1 0.5 1 1 3
particle minecraft:poof ~ ~1 ~ 1 0 1 0 1
playsound minecraft:block.sand.break hostile @a ~ ~ ~ 2 1
playsound minecraft:block.sand.break hostile @a ~ ~ ~ 2 1
playsound minecraft:block.sand.break hostile @a ~ ~ ~ 2 1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/10/finish
