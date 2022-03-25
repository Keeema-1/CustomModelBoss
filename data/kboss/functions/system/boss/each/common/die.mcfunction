
execute if score @s kb.id matches 1 run bossbar set kboss:health/1 players
execute if score @s kb.id matches 2 run bossbar set kboss:health/2 players
execute if score @s kb.id matches 3 run bossbar set kboss:health/3 players

tag @s add KB.Dead
tag @s remove KB.Angry

execute as @e[tag=KB.BossCheck,tag=KB.HitBox] run data merge entity @s {Size:0}
kill @e[tag=KB.BossCheck,tag=KB.HitBox]
