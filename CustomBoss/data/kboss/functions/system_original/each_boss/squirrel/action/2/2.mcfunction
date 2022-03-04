
function kboss:system/each_boss/squirrel/action/common/player_direction/is_leftside

function kboss:system/each_boss/squirrel/action/common/space/back

execute if data storage kboss:temp {space:1b} run function kboss:system/each_boss/squirrel/action/2/1_sub

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/2/2to3
