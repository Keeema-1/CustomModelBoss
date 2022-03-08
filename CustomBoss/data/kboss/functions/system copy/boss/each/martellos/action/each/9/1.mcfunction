
execute if score @s kb.action_time matches 11.. at @s run function kboss:system/boss/each/common/action/player_direction/is_leftside
execute if score @s kb.action_time matches 11.. if data storage kboss:temp {direction:{leftside:1b}} run tp @s ~ ~ ~ ~3 0
execute if score @s kb.action_time matches 11.. if data storage kboss:temp {direction:{leftside:0b}} run tp @s ~ ~ ~ ~-3 0

#execute if score @s kb.action_time matches ..5 run tp ^ ^ ^-0.2

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/9/1to2
