
execute if score @s kb.action_time matches 16.. run tp ^ ^ ^0.3
execute if score @s kb.action_time matches 11..15 run tp ^ ^ ^0.2

execute if score @s kb.action_time matches 13 run particle minecraft:explosion ^ ^0.5 ^3.5 0.5 0.5 0.5 1 5

execute if score @s kb.action_time matches 13 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1
execute if score @s kb.action_time matches 13 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1

execute if score @s kb.action_time matches 10 run function kboss:system/each_boss/matsuri/action/common/attack_finish

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/7/finish
