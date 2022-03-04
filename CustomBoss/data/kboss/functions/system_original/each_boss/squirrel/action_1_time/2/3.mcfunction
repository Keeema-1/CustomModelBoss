
execute if score @s kb.action_time matches 10 run function kboss:system/each_boss/squirrel/action/2/bite

function kboss:system/each_boss/squirrel/action/common/space/front

execute if data storage kboss:temp {space:1b} run tp ^ ^ ^0.3

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/2/3to4
