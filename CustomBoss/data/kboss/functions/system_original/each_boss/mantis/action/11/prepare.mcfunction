
execute at @s run function kboss:system/each_boss/mantis/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:1b}} rotated ~ 0 run tp @s ^ ^ ^ ~-2 ~
execute if data storage kboss:temp {direction:{leftside:0b}} rotated ~ 0 run tp @s ^ ^ ^ ~2 ~

execute if score @s kb.action_time matches 11.. positioned ^ ^ ^8 facing entity @p eyes rotated ~ 0 positioned as @s positioned ^ ^ ^0.1 run tp @s ~ ~ ~

execute if score @s kb.action_sub matches -1 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/prepare/to6
execute if score @s kb.action_sub matches -2 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/prepare/to1
execute if score @s kb.action_sub matches -3 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/prepare/to2
execute if score @s kb.action_sub matches -4 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/prepare/to3
execute if score @s kb.action_sub matches -5 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/prepare/to4
execute if score @s kb.action_sub matches -6 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/prepare/to5

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/11/1to2
