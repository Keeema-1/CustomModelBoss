
execute at @s run function kboss:system/each_boss/matsuri/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/21/finish
