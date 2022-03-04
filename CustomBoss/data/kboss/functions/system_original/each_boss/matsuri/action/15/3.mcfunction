
execute if score @s kb.action_time matches 30..39 run tp ~ ~0.2 ~
execute if score @s kb.action_time matches 20..29 run tp ~ ~-0.2 ~

execute at @s run tp @s ^ ^ ^0.4

execute if score @s kb.action_time matches ..20 run particle minecraft:poof ~ ~ ~ 1 0 1 0 2

execute if score @s kb.action_time matches ..20 run playsound minecraft:block.hanging_roots.step hostile @a ~ ~ ~ 2 0
execute if score @s kb.action_time matches ..20 run playsound minecraft:block.hanging_roots.step hostile @a ~ ~ ~ 2 0
execute if score @s kb.action_time matches ..20 run playsound minecraft:block.hanging_roots.step hostile @a ~ ~ ~ 2 0

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action_change/100
