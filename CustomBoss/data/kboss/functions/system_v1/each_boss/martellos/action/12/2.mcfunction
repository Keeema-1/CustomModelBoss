
function kboss:system/each_boss/martellos/action/common/space/left
execute if data storage kboss:temp {space:1b} run tp @s ^0.1 ^ ^

execute at @s run function kboss:system/each_boss/martellos/action/common/player_direction/is_frontside
execute if data storage kboss:temp {direction:{frontside:1b}} at @s run tp @s ~ ~ ~ ~-2 0
execute if data storage kboss:temp {direction:{frontside:0b}} at @s run tp @s ~ ~ ~ ~2 0

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action/12/2to3
