
execute if score @s kb.action_time matches 11.. run function kboss:system/boss/each/martellos/action/common/space/left
execute if score @s kb.action_time matches 11.. if data storage kboss:temp {space:1b} run tp @s ^0.2 ^ ^

execute if score @s kb.action_time matches 10 run function kboss:system/boss/each/martellos/action/each/13/5_sub

execute at @s run function kboss:system/boss/each/martellos/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/13/finish
