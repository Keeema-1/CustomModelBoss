
execute if score @s kb.action_time matches 260 run particle minecraft:poof ~ ~2 ~ 2 0.2 2 0.1 100
execute if score @s kb.action_time matches 260 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0

execute if score @s kb.action_time matches 260.. run tp ~ ~-0.03 ~

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/99/finish