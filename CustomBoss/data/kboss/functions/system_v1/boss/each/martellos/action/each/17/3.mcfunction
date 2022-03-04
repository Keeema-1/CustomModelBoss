
function kboss:system/boss/each/martellos/action/common/space/front
execute if data storage kboss:temp {space:1b} at @s run tp @s ^ ^ ^0.3 ~-0.5 ~

particle minecraft:block minecraft:dirt ~ ~1 ~ 1 0.5 1 1 3

execute at @s run function kboss:system/boss/each/martellos/action/common/ypos/main

execute if score @s kb.anime_time matches ..0 run function kboss:system/boss/each/martellos/action/each/17/to4
