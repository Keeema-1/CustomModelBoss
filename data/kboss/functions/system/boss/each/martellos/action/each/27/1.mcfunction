
execute at @s run tp @s ^0.5 ^ ^ ~15 0

execute if score @s kb.action_time matches 5 run function kboss:system/boss/each/martellos/pose/knock/right/1

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/27/finish
