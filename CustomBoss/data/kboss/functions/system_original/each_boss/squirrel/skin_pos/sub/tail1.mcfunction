
execute if entity @s[tag=KB.Normal] positioned ^ ^ ^-0.5 rotated ~90 -90 run tp @s ^ ^ ^0.2

execute store result entity @s Rotation[0] float 1 run scoreboard players get @e[distance=..4,tag=KB.Skin,tag=KB.Tail1,tag=KB.BossCheck,limit=1] kb.ry_global
execute store result entity @s Rotation[1] float 1 run scoreboard players get @e[distance=..4,tag=KB.Skin,tag=KB.Tail1,tag=KB.BossCheck,limit=1] kb.rx_global
