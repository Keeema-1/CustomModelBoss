
execute if score @s kb.action_time matches 31.. rotated ~ 0 run tp ^ ^ ^0.3
execute if score @s kb.action_time matches 21..30 rotated ~ 0 run tp ^ ^ ^0.1

execute if score @s kb.action_time matches 35 run function kboss:system/each_boss/mantis/action/7/explode

execute if score @s kb.action_time matches 20 run function kboss:system/each_boss/mantis/pose/dive/3

execute if score @s kb.action_time matches 25 run function kboss:system/each_boss/mantis/action/common/attack_finish

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/7/finish
