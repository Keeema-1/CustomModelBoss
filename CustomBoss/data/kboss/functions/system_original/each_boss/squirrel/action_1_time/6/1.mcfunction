
function kboss:system/each_boss/squirrel/action/common/player_direction/is_frontside

execute run function kboss:system/each_boss/squirrel/action/6/1_sub

execute at @s run function kboss:system/each_boss/squirrel/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/6/1to2
