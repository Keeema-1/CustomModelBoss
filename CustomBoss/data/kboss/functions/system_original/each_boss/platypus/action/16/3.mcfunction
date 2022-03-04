
#function kboss:system/each_boss/platypus/action/common/space/left

execute at @s run function kboss:system/each_boss/platypus/action/common/ypos/main

execute if score @s kb.action_time matches 5 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.5
execute if score @s kb.action_time matches 5 run particle minecraft:explosion ^ ^ ^2 1 0 1 1 3

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/16/finish
