
execute if score @s kb.action_time matches 36..40 positioned ^ ^ ^0.75 run tp ~ ~0.2 ~
execute if score @s kb.action_time matches 31..35 positioned ^ ^ ^0.75 run tp ~ ~-0.2 ~
execute if score @s kb.action_time matches 26..30 positioned ^ ^ ^0.75 run tp ~ ~-0.4 ~
execute if score @s kb.action_time matches 1..10 positioned ^ ^ ^0.75 run tp ~ ~-0.6 ~

execute if score @s kb.action_time matches 1..29 rotated ~ 0 unless block ^ ^-0.3 ^2 #kboss:space run function kboss:system/each_boss/matsuri/action/13/2to3

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/13/2to3
