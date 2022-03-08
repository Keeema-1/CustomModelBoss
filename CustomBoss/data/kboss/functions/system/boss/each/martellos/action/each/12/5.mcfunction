
function kboss:system/boss/each/martellos/action/common/space/right
execute if score @s kb.action_time matches 11.. if data storage kboss:temp {space:1b} run tp @s ^-0.3 ^ ^
execute if score @s kb.action_time matches ..10 if data storage kboss:temp {space:1b} run tp @s ^-0.2 ^ ^

execute if score @s kb.action_time matches 10 run function kboss:system/boss/each/martellos/action/each/12/5_sub

execute at @s run function kboss:system/boss/each/martellos/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/12/finish

particle minecraft:block minecraft:dirt ~ ~1 ~ 1 0.5 1 1 3
playsound minecraft:block.sand.break hostile @a ~ ~ ~ 2 1
playsound minecraft:block.sand.break hostile @a ~ ~ ~ 2 1
playsound minecraft:block.sand.break hostile @a ~ ~ ~ 2 1
