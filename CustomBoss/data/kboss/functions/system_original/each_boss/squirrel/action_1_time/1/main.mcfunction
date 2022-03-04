
# 歩行

function kboss:system/each_boss/squirrel/action/common/space/front

execute if data storage kboss:temp {space:1b} facing entity @p feet rotated ~ 0 run tp ^ ^ ^0.3

execute if data storage kboss:temp {space:0b} run function kboss:system/each_boss/squirrel/action/1/sub

execute at @s run function kboss:system/each_boss/squirrel/action/common/ypos/main

#function kboss:system/each_boss/squirrel/action/common/player_direction/area

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/squirrel/action/1/1

execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/squirrel/action/1/2

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/1/finish

execute if entity @a[distance=..4] run function kboss:system/each_boss/squirrel/action/1/finish
