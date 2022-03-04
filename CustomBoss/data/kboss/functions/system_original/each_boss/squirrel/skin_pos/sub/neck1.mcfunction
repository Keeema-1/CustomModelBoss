
execute if entity @s[tag=KB.Normal] positioned ~ ~0.25 ~ positioned ^ ^ ^0.9 run tp @s ^ ^ ^

execute store result entity @s Rotation[0] float 1 run scoreboard players get @e[distance=..4,tag=KB.Skin,tag=KB.Neck1,tag=KB.BossCheck,limit=1] kb.ry_global
execute store result entity @s Rotation[1] float 1 run scoreboard players get @e[distance=..4,tag=KB.Skin,tag=KB.Neck1,tag=KB.BossCheck,limit=1] kb.rx_global
