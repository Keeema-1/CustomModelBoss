
# 無

function kboss:system/each_boss/platypus/action/common/ypos/main

execute if score @s kb.action_time matches 10.. run scoreboard players set @s kb.action_time 9

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action_change/table/main
#execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action_change/17
