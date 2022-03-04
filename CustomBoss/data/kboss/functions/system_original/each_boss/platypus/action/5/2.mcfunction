
execute if score @s kb.action_time matches 6..10 run tp ^ ^ ^0.6
execute if score @s kb.action_time matches 1..5 run tp ^ ^ ^0.3

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/5/2to3
