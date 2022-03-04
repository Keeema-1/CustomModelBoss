
function kboss:system/each_boss/squirrel/action/common/space/front

execute if data storage kboss:temp {space:1b} rotated ~ 0 run tp ^ ^ ^0.1

execute at @s run function kboss:system/each_boss/squirrel/action/common/ypos/main

#particle minecraft:cloud ~ ~ ~ 0.5 0.1 0.5 0 1
particle minecraft:block minecraft:dirt ~ ~ ~ 0.5 0.1 0.5 0 3
playsound minecraft:item.shovel.flatten hostile @a ~ ~ ~ 2 0.5

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/10/finish
