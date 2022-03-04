
execute if score @s kb.action_time matches 16.. run tp ^ ^ ^0.5
execute if score @s kb.action_time matches 11..15 run tp ^ ^ ^0.2

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/16/finish
