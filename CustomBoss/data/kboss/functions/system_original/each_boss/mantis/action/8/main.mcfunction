
# 毒ブレス

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/mantis/action/8/1
execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/mantis/action/8/2
execute if score @s kb.action_sub matches 3 run function kboss:system/each_boss/mantis/action/8/3

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/8/finish
