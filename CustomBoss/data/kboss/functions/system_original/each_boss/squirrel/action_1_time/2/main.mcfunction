
# 噛みつき

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/squirrel/action/2/1

execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/squirrel/action/2/2

execute if score @s kb.action_sub matches 3 run function kboss:system/each_boss/squirrel/action/2/3

execute if score @s kb.action_sub matches 4 run function kboss:system/each_boss/squirrel/action/2/4

execute at @s run function kboss:system/each_boss/squirrel/action/common/ypos/main
