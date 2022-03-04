
scoreboard players set $temp kb.temp 500
scoreboard players operation $temp kb.temp *= @s kb.hp_remove_500
scoreboard players operation $boss_health kb.temp -= $temp kb.temp
