
function kboss:system/each_boss/squirrel/action/common/space/back

function kboss:system/each_boss/platypus/action/common/player_direction/is_leftside

execute if data storage kboss:temp {space:1b} if data storage kboss:temp {direction:{leftside:1b}} if score @s kb.action_time matches 1..60 run tp @s ^ ^ ^-0.05 ~-1 ~
execute if data storage kboss:temp {space:1b} if data storage kboss:temp {direction:{leftside:0b}} if score @s kb.action_time matches 1..60 run tp @s ^ ^ ^-0.05 ~1 ~

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/5/1to2
