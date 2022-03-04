
execute as @e[type=minecraft:magma_cube,tag=KB.Boss] run data merge entity @s {Size:0}
execute as @e[type=minecraft:slime,tag=KB.Boss] run data merge entity @s {Size:0}
kill @e[tag=KB.Boss]

bossbar set kboss:health/1 visible false
bossbar set kboss:health/2 visible false
bossbar set kboss:health/3 visible false
