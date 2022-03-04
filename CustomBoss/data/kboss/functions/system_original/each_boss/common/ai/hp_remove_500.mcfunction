
scoreboard players set $system kb.temp 500
scoreboard players operation $system kb.temp *= @s kb.hp_remove_500
scoreboard players operation $system kb.health -= $system kb.temp
