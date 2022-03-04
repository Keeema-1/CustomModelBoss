
execute if score @s kb.action_time matches 15 run playsound minecraft:block.gravel.break hostile @a ~ ~ ~ 2 0
execute if score @s kb.action_time matches 15 run playsound minecraft:block.nether_bricks.break hostile @a ~ ~ ~ 2 0.5
execute if score @s kb.action_time matches 15 run particle minecraft:block minecraft:dirt ^-4 ^1 ^-2 0 0 0 0 30

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/19/2to3
