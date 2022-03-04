
scoreboard players add @s kb.hp_remove_500 1
scoreboard players add @s kb.health 500
execute store result entity @s Health float 1 run scoreboard players get @s kb.health
