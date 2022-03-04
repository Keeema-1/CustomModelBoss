
# 走る

function kboss:system/each_boss/platypus/action/common/space/front

execute if data storage kboss:temp {space:1b} facing entity @p feet rotated ~ 0 run tp ^ ^ ^0.4

#function kboss:system/each_boss/platypus/action/common/player_direction/is_leftside
#execute if data storage kboss:temp {direction:{leftside:1b}} run tp @s ^ ^ ^0.4 ~-2 ~
#execute if data storage kboss:temp {direction:{leftside:0b}} run tp @s ^ ^ ^0.4 ~2 ~

execute at @s run function kboss:system/each_boss/platypus/action/common/ypos/main

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/platypus/action/2/1

execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/platypus/action/2/2

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/2/finish

execute if entity @a[distance=..6] run function kboss:system/each_boss/platypus/action/2/finish
