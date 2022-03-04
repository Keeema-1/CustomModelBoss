
# 突進

execute if score @s kb.action_sub matches ..-1 run function kboss:system/each_boss/mantis/action/10/prepare
execute if score @s kb.action_sub matches 0 if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/10/to_run
execute if score @s kb.action_sub matches 1..6 run function kboss:system/each_boss/mantis/action/10/run
execute if score @s kb.action_sub matches 7 run function kboss:system/each_boss/mantis/action/10/7
