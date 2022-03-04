
# 鎌叩きつけ(右)

execute if score @s kb.action_sub matches ..-1 run function kboss:system/each_boss/mantis/action/13/prepare
execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/mantis/action/13/1
execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/mantis/action/13/2
