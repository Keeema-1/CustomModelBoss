
function kboss:system/each_boss/platypus/action/common/player_direction/is_leftside
function kboss:system/each_boss/platypus/action/common/player_direction/is_front

execute if data storage kboss:temp {direction:{leftside:0b}} if data storage kboss:temp {direction:{front:0b}} run tp @s ^ ^ ^ ~2 ~
execute if data storage kboss:temp {direction:{leftside:1b}} if data storage kboss:temp {direction:{front:0b}} run tp @s ^ ^ ^ ~-2 ~

execute at @s run function kboss:system/each_boss/platypus/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/17/1to2
