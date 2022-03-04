
execute run function kboss:system/each_boss/martellos/action/common/space/right
execute if score @s kb.action_time matches 6.. if data storage kboss:temp {space:1b} run tp @s ^-0.8 ^0.1 ^
execute if score @s kb.action_time matches ..5 if data storage kboss:temp {space:1b} run tp @s ^-0.4 ^ ^

execute if score @s kb.action_time matches ..5 at @s run function kboss:system/each_boss/martellos/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action/12/4to5
