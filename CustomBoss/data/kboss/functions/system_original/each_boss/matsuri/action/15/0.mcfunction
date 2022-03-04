
execute if score @s kb.action_time matches 16..20 rotated ~ 0 positioned ^ ^ ^-0.1 run tp ~ ~0.3 ~
execute if score @s kb.action_time matches 11..15 rotated ~ 0 positioned ^ ^ ^-0.1 run tp ~ ~-0.2 ~

execute if score @s kb.action_time matches ..10 at @s run function kboss:system/each_boss/matsuri/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/15/0to1
