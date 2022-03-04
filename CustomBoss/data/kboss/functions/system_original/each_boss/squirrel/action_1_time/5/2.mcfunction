
function kboss:system/each_boss/squirrel/action/common/space/right

execute if score @s kb.action_time matches 15..18 if data storage kboss:temp {space:1b} run tp ^-1 ^ ^
execute if score @s kb.action_time matches 11..14 if data storage kboss:temp {space:1b} run tp ^-0.2 ^ ^

execute at @s run function kboss:system/each_boss/squirrel/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/5/finish
