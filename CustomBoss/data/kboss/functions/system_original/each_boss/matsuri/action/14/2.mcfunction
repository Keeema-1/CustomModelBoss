
execute if score @s kb.action_time matches 60 run function kboss:system/each_boss/matsuri/pose/spit/jump/right
execute if score @s kb.action_time matches 60 run function kboss:system/each_boss/matsuri/action/14/spit/right
execute if score @s kb.action_time matches 55 run function kboss:system/each_boss/matsuri/pose/spit/jump/2
execute if score @s kb.action_time matches 55 run function kboss:system/each_boss/matsuri/action/14/spit/front
execute if score @s kb.action_time matches 50 run function kboss:system/each_boss/matsuri/pose/spit/jump/left
execute if score @s kb.action_time matches 50 run function kboss:system/each_boss/matsuri/action/14/spit/left

function kboss:system/each_boss/matsuri/action/14/jump_common
