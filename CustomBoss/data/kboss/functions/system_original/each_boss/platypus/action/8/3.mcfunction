
function kboss:system/each_boss/squirrel/action/common/space/back

execute if data storage kboss:temp {space:1b} run tp ^ ^ ^0.1

execute if score @s kb.action_time matches 16..25 at @s run tp ~ ~-0.2 ~

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/8/3to4


execute if score @s kb.action_time matches 5 at @s run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0
execute if score @s kb.action_time matches 5 at @s run particle minecraft:explosion ~ ~ ~ 1.5 0.1 1.5 1 10
