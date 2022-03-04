
execute if entity @s[tag=KB.Normal] positioned ^ ^ ^0.7 rotated ~-90 0 rotated ~ ~0 run tp @s ^ ^ ^0.3

execute if entity @s[tag=KB.Normal] as @e[distance=..4,tag=KB.Skin,tag=KB.LeftArm1,tag=KB.BossCheck,limit=1] if score @s kb.rz_global matches 5.. positioned ^ ^ ^0.7 rotated ~-90 0 run function kboss:system/each_boss/squirrel/skin_pos/sub/z/left_arm1/positive/main

execute if entity @s[tag=KB.Normal] as @e[distance=..4,tag=KB.Skin,tag=KB.LeftArm1,tag=KB.BossCheck,limit=1] if score @s kb.rz_global matches ..-5 positioned ^ ^ ^0.7 rotated ~-90 0 run function kboss:system/each_boss/squirrel/skin_pos/sub/z/left_arm1/negative/main

execute store result entity @s Rotation[0] float 1 run scoreboard players get @e[distance=..4,tag=KB.Skin,tag=KB.LeftArm1,tag=KB.BossCheck,limit=1] kb.ry_global
execute store result entity @s Rotation[1] float 1 run scoreboard players get @e[distance=..4,tag=KB.Skin,tag=KB.LeftArm1,tag=KB.BossCheck,limit=1] kb.rx_global
