
execute if score @s kb.action_time matches 36..40 rotated ~ 0 positioned ^ ^ ^-0.5 run tp ~ ~0.2 ~
execute if score @s kb.action_time matches 31..35 rotated ~ 0 positioned ^ ^ ^-0.5 run tp ~ ~0.1 ~
execute if score @s kb.action_time matches 26..30 rotated ~ 0 positioned ^ ^ ^-0.5 run tp ~ ~-0.1 ~
execute if score @s kb.action_time matches 1..26 rotated ~ 0 positioned ^ ^ ^-0.5 run tp ~ ~-0.2 ~

execute if score @s kb.action_time matches 30 run function kboss:system/each_boss/matsuri/pose/step/back/spit/2
execute if score @s kb.action_time matches 25 positioned as @e[distance=..16,tag=KB.Jaw,tag=KB.Skin,tag=KB.BossCheck] rotated ~ 10 run function kboss:system/each_boss/matsuri/action/common/launch/1

execute if score @s kb.action_time matches 1..29 rotated ~ 0 unless block ^ ^-0.3 ^-2 #kboss:space run function kboss:system/each_boss/matsuri/action/21/2to3
execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/21/2to3
