
function kboss:system/each_boss/squirrel/action/common/player_direction/is_leftside

execute if data storage kboss:temp {direction:{leftside:0b}} run tp @s ^ ^ ^ ~2 ~
execute if data storage kboss:temp {direction:{leftside:1b}} run tp @s ^ ^ ^ ~-2 ~

execute at @s run function kboss:system/each_boss/squirrel/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/10/1to2
