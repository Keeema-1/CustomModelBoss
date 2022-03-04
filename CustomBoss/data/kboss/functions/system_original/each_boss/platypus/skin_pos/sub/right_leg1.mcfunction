
execute if entity @s[tag=KB.Normal] run tp @s ^-1.1 ^-0.2 ^-0.5

execute store result entity @s Rotation[0] float 1 run scoreboard players get @e[distance=..4,tag=KB.Skin,tag=KB.RightLeg1,tag=KB.BossCheck,limit=1] kb.ry_global
execute store result entity @s Rotation[1] float 1 run scoreboard players get @e[distance=..4,tag=KB.Skin,tag=KB.RightLeg1,tag=KB.BossCheck,limit=1] kb.rx_global
