
execute if predicate kboss:random/500m at @e[distance=..16,tag=KB.Head] run particle minecraft:entity_effect ~ ~2 ~ 0 0 0.5 1 0

execute at @s run function kboss:system/each_boss/mantis/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:1b}} rotated ~ 0 run tp @s ^ ^ ^ ~-1 ~
execute if data storage kboss:temp {direction:{leftside:0b}} rotated ~ 0 run tp @s ^ ^ ^ ~1 ~

execute if score @s kb.action_time matches 11.. positioned ^ ^ ^6 facing entity @p eyes rotated ~ 0 positioned as @s positioned ^ ^ ^0.1 run tp @s ~ ~ ~

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/9/1to2
