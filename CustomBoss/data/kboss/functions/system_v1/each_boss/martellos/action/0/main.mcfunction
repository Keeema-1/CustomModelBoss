
# 無

function kboss:system/each_boss/martellos/action/common/ypos/main

execute if score @s kb.action_time matches 10.. run scoreboard players set @s kb.action_time 9

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action/0/finish
#execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action_change/4
