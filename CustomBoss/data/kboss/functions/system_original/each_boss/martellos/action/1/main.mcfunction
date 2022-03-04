
# 歩く

function kboss:system/each_boss/martellos/action/common/space/front

execute if data storage kboss:temp {space:1b} facing entity @p feet rotated ~ 0 run tp ^ ^ ^0.4

execute at @s run function kboss:system/each_boss/martellos/action/common/ypos/main

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/martellos/action/1/1

execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/martellos/action/1/2

execute if score @s kb.action_time matches 1.. if entity @a[distance=..6] run function kboss:system/each_boss/martellos/action/1/finish
execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action/1/finish
