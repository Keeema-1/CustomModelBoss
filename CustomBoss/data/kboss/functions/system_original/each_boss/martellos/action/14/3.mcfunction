
execute if score @s kb.action_time matches 11.. run tp @s ~ ~ ~ ~2 ~

execute if score @s kb.action_time matches 20 run function kboss:system/each_boss/martellos/action/14/3_sub

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action/14/finish
