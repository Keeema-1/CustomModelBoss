
# 噛みつき(正面)

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/platypus/action/5/1

execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/platypus/action/5/2

execute if score @s kb.action_sub matches 3 run function kboss:system/each_boss/platypus/action/5/3

execute at @s run function kboss:system/each_boss/platypus/action/common/ypos/main
