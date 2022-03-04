
execute at @s run function kboss:system/each_boss/matsuri/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:1b}} run tp @s ^ ^ ^-0.1 ~-1 ~
execute if data storage kboss:temp {direction:{leftside:0b}} run tp @s ^ ^ ^-0.1 ~1 ~

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/12/1to2
