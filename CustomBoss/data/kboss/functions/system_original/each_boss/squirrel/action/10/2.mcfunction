
function kboss:system/each_boss/squirrel/action/common/space/front

execute if data storage kboss:temp {space:0b} rotated ~ 0 run tp ^ ^0.1 ^
execute if data storage kboss:temp {space:1b} rotated ~ 0 run tp ^ ^0.1 ^0.25

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/10/2to3
