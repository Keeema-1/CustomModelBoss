
execute if score @s kb.action_time matches 76..80 rotated ~ 0 positioned ^ ^ ^-0.1 run tp ~ ~0.6 ~
execute if score @s kb.action_time matches 71..75 rotated ~ 0 positioned ^ ^ ^-0.1 run tp ~ ~0.4 ~
#execute if score @s kb.action_time matches 61..75 run tp ~ ~0.2 ~
#execute if score @s kb.action_time matches 51..60 run tp ~ ~0.1 ~
execute if score @s kb.action_time matches 66..70 rotated ~ 0 positioned ^ ^ ^-0.1 run tp ~ ~0.2 ~
execute if score @s kb.action_time matches 56..65 rotated ~ 0 positioned ^ ^ ^ run tp ~ ~0.1 ~
execute if score @s kb.action_time matches 51..55 rotated ~ 0 positioned ^ ^ ^ run tp ~ ~-0.1 ~
execute if score @s kb.action_time matches 41..50 rotated ~ 0 positioned ^ ^ ^-0.2 run tp ~ ~-0.6 ~
#execute if score @s kb.action_time matches 36..45 run tp ~ ~-0.2 ~
execute if score @s kb.action_time matches 1..40 rotated ~ 0 positioned ^ ^ ^-0.2 run tp ~ ~-0.8 ~

execute if score @s kb.action_time matches 40 run function kboss:system/each_boss/matsuri/pose/spit/step/back/1

execute if score @s kb.action_time matches 1..50 unless block ~ ~-0.3 ~ #kboss:space run function kboss:system/each_boss/matsuri/action/14/to4

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/14/to4
