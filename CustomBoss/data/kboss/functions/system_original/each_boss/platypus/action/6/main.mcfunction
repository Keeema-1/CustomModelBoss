
# 噛みつき(左)

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/platypus/action/6/1

execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/platypus/action/6/2

execute if score @s kb.action_sub matches 3 run function kboss:system/each_boss/platypus/action/6/3

execute at @s run function kboss:system/each_boss/platypus/action/common/ypos/main
