
execute at @s run function kboss:system/each_boss/mantis/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:1b}} rotated ~ 0 run tp @s ^ ^ ^ ~-1 ~
execute if data storage kboss:temp {direction:{leftside:0b}} rotated ~ 0 run tp @s ^ ^ ^ ~1 ~

execute if score @s kb.action_time matches 11.. positioned ^ ^ ^8 facing entity @p eyes rotated ~ 0 positioned as @s positioned ^ ^ ^0.1 run tp @s ~ ~ ~

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/15/1to2
