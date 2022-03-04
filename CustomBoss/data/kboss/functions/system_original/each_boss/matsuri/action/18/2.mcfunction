
tp @s ~ ~ ~ ~-15 ~
particle minecraft:sweep_attack ^3 ^2 ^3 0.1 0.1 0.1 1 2

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/18/finish
