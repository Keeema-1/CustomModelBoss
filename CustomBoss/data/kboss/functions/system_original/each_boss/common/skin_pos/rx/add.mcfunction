
scoreboard players operation @s kb.rx += @s kb.drx
execute unless score @s kb.rx < @s kb.rx_goal run scoreboard players operation @s kb.rx = @s kb.rx_goal
