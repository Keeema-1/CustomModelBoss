
function kboss:system/each_boss/matsuri/action/common/ypos/main

particle minecraft:explosion ~ ~ ~ 1 1 1 1 1

execute if score @s kb.action_time matches 20.. run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.5

execute if score @s kb.action_time matches 90 run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1.5 1
execute if score @s kb.action_time matches 80 run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1
execute if score @s kb.action_time matches 70 run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.5 1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/99/1to2
