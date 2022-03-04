
function kboss:system/each_boss/platypus/action/common/player_direction/is_frontside

execute if data storage kboss:temp {direction:{frontside:0b}} run tp @s ^ ^ ^ ~1 ~
execute if data storage kboss:temp {direction:{frontside:1b}} run tp @s ^ ^ ^ ~-1 ~

execute at @s run function kboss:system/each_boss/platypus/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/10/1to2
