
execute if score @s kb.action_time matches 11.. at @s run function kboss:system/boss/each/common/action/player_direction/is_leftside
execute if score @s kb.action_time matches 11.. if data storage kboss:temp {direction:{leftside:1b}} run tp @s ~ ~ ~ ~-3 0
execute if score @s kb.action_time matches 11.. if data storage kboss:temp {direction:{leftside:0b}} run tp @s ~ ~ ~ ~3 0

execute if score @s kb.action_time matches 11.. positioned ^ ^ ^7 facing entity @p eyes rotated ~ 0 positioned as @s positioned ^ ^ ^0.2 run tp @s ~ ~ ~

execute at @s run function kboss:system/boss/each/common/action/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/23/0to1