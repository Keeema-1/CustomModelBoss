
particle minecraft:block minecraft:dirt ~ ~1 ~ 1 0.5 1 1 3
playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.4

function kboss:system/boss/each/martellos/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:1b}} run tp @s ~ ~ ~ ~-0.5 0
execute if data storage kboss:temp {direction:{leftside:0b}} run tp @s ~ ~ ~ ~0.5 0

function kboss:system/boss/each/martellos/action/common/player_direction/is_frontside
execute if data storage kboss:temp {direction:{frontside:0b}} run function kboss:system/boss/each/martellos/action/each/17/to3

function kboss:system/boss/each/martellos/action/common/space/front
execute if data storage kboss:temp {space:1b} at @s run tp @s ^ ^ ^0.5


execute at @s run function kboss:system/boss/each/martellos/action/common/ypos/main
