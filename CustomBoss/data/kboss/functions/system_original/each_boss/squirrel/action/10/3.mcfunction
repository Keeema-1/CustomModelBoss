
function kboss:system/each_boss/squirrel/action/common/space/front

execute if data storage kboss:temp {space:1b} rotated ~ 0 run tp ^ ^ ^0.25

data merge storage kboss:temp {check:0b}

execute at @s if block ~-1 ~-0.11 ~-1 #kboss:space if block ~-1 ~-0.11 ~ #kboss:space if block ~-1 ~-0.11 ~1 #kboss:space if block ~ ~-0.11 ~-1 #kboss:space if block ~ ~-0.11 ~ #kboss:space if block ~ ~-0.11 ~1 #kboss:space if block ~1 ~-0.11 ~-1 #kboss:space if block ~1 ~-0.11 ~ #kboss:space if block ~1 ~-0.11 ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if data storage kboss:temp {check:1b} run tp ~ ~-0.5 ~
execute if data storage kboss:temp {check:1b} at @s if block ~-1 ~-0.21 ~-1 #kboss:space if block ~-1 ~-0.21 ~ #kboss:space if block ~-1 ~-0.21 ~1 #kboss:space if block ~ ~-0.21 ~-1 #kboss:space if block ~ ~-0.21 ~ #kboss:space if block ~ ~-0.21 ~1 #kboss:space if block ~1 ~-0.21 ~-1 #kboss:space if block ~1 ~-0.21 ~ #kboss:space if block ~1 ~-0.21 ~1 #kboss:space run tp ~ ~-0.1 ~

execute if data storage kboss:temp {check:0b} run function kboss:system/each_boss/squirrel/action/10/3to4

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/10/3to4

