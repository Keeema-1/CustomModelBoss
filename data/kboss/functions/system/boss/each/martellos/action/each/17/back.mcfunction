
function kboss:system/boss/each/common/action/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:1b}} run tp @s ~ ~ ~ ~-1 0
execute if data storage kboss:temp {direction:{leftside:0b}} run tp @s ~ ~ ~ ~1 0

function kboss:system/boss/each/common/action/space/back
execute if data storage kboss:temp {space:1b} at @s run tp @s ^ ^ ^-0.1

execute at @s run function kboss:system/boss/each/common/action/ypos/main
