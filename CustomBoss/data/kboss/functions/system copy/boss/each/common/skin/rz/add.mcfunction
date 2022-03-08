
scoreboard players operation @s kb.rz += @s kb.drz
execute unless score @s kb.rz < @s kb.rz_goal run scoreboard players operation @s kb.rz = @s kb.rz_goal
