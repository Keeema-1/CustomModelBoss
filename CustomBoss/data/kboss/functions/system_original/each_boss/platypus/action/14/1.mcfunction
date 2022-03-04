
function kboss:system/each_boss/platypus/action/common/player_direction/is_leftside

execute if data storage kboss:temp {direction:{leftside:0b}} run tp @s ^ ^ ^ ~1 ~
execute if data storage kboss:temp {direction:{leftside:1b}} run tp @s ^ ^ ^ ~-1 ~

execute at @s run function kboss:system/each_boss/platypus/action/common/ypos/main

execute if score @s kb.action_time matches 50 run function kboss:system/each_boss/platypus/pose/tail/right/2
execute if score @s kb.action_time matches 46 run function kboss:system/each_boss/platypus/pose/tail/right/3
execute if score @s kb.action_time matches 42 run function kboss:system/each_boss/platypus/pose/tail/right/4
execute if score @s kb.action_time matches 38 run function kboss:system/each_boss/platypus/pose/tail/right/1
execute if score @s kb.action_time matches 34 run function kboss:system/each_boss/platypus/pose/tail/right/2
execute if score @s kb.action_time matches 30 run function kboss:system/each_boss/platypus/pose/tail/right/3
execute if score @s kb.action_time matches 26 run function kboss:system/each_boss/platypus/pose/tail/right/4
execute if score @s kb.action_time matches 22 run function kboss:system/each_boss/platypus/pose/tail/right/1
execute if score @s kb.action_time matches 18 run function kboss:system/each_boss/platypus/pose/tail/right/2
execute if score @s kb.action_time matches 12 run function kboss:system/each_boss/platypus/pose/tail/right/3
execute if score @s kb.action_time matches 8 run function kboss:system/each_boss/platypus/pose/tail/right/4

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/14/1to2
