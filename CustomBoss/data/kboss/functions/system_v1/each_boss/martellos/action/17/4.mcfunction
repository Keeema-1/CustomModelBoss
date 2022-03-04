
function kboss:system/each_boss/martellos/action/common/space/front
execute if data storage kboss:temp {space:1b} at @s run tp @s ^ ^ ^0.2 ~1 ~

particle minecraft:block minecraft:dirt ~ ~1 ~ 1 0.5 1 1 3
playsound minecraft:block.sand.break hostile @a ~ ~ ~ 2 1
playsound minecraft:block.sand.break hostile @a ~ ~ ~ 2 1
playsound minecraft:block.sand.break hostile @a ~ ~ ~ 2 1

execute at @s run function kboss:system/each_boss/martellos/action/common/ypos/main

execute if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/martellos/action/17/finish
