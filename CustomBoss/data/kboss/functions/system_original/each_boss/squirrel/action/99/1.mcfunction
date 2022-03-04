
particle minecraft:explosion ~ ~ ~ 1 1 1 1 1

execute if score @s kb.action_time matches 20.. run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 1.3

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/99/1to2
