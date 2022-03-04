
function kboss:system/each_boss/squirrel/action/common/space/right

execute if score @s kb.action_time matches 29..36 if data storage kboss:temp {space:1b} run tp ^-0.5 ^ ^
execute if score @s kb.action_time matches 21..28 if data storage kboss:temp {space:1b} run tp ^-0.1 ^ ^

execute at @s run function kboss:system/each_boss/squirrel/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/5/finish
