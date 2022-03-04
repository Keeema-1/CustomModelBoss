
execute if score @s kb.action_time matches 250 run particle minecraft:poof ~ ~2 ~ 2 0.2 2 0.1 100
execute if score @s kb.action_time matches 250 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0

#execute if score @s kb.action_time matches 260.. run tp ~ ~-0.035 ~
execute if score @s kb.action_time matches 250..270 run tp ~ ~-0.07 ~

execute if score @s kb.action_time matches 260 run function kboss:system/each_boss/mantis/action/99/2_sub1

execute if score @s kb.action_time matches ..240 run function kboss:system/each_boss/mantis/action/99/2_sub2

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/99/finish
