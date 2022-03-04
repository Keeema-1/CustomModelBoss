
playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0

execute at @s run function kboss:system/each_boss/mantis/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:1b}} at @s rotated ~ 0 run tp @s ^ ^ ^0.8 ~-2 ~
execute if data storage kboss:temp {direction:{leftside:0b}} at @s rotated ~ 0 run tp @s ^ ^ ^0.8 ~2 ~

execute if score @s kb.action_sub matches 1 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/to2
execute if score @s kb.action_sub matches 2 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/to3
execute if score @s kb.action_sub matches 3 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/to4
execute if score @s kb.action_sub matches 4 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/to5
execute if score @s kb.action_sub matches 5 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/to6
execute if score @s kb.action_sub matches 6 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/10/to1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/10/to7
