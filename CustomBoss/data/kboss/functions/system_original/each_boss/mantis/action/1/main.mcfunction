
# 接近

function kboss:system/each_boss/mantis/action/common/player_direction/area

execute if data storage kboss:temp {direction:{area:"front"}} at @s facing entity @p eyes rotated ~ 0 positioned ^ ^ ^0.4 run tp @s ~ ~ ~ ~ ~

execute unless data storage kboss:temp {direction:{area:"front"}} at @s run function kboss:system/each_boss/mantis/action/common/player_direction/is_leftside
execute unless data storage kboss:temp {direction:{area:"front"}} if data storage kboss:temp {direction:{leftside:1b}} rotated ~ 0 run tp @s ^ ^ ^0.3 ~-5 ~
execute unless data storage kboss:temp {direction:{area:"front"}} if data storage kboss:temp {direction:{leftside:0b}} rotated ~ 0 run tp @s ^ ^ ^0.3 ~5 ~

#execute unless score @s kb.action_sub matches 4 unless score @s kb.action_sub matches 8 run tp @s ~ ~ ~ ~4 ~

execute if score @s kb.action_sub matches 1 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/1/to2
execute if score @s kb.action_sub matches 2 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/1/to3
execute if score @s kb.action_sub matches 3 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/1/to4
execute if score @s kb.action_sub matches 4 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/1/to5
execute if score @s kb.action_sub matches 5 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/1/to6
execute if score @s kb.action_sub matches 6 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/1/to1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/1/finish
