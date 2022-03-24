
data merge storage kboss:temp {check:1b}

tp @e[distance=..4,tag=KB.Check,limit=1] ~ ~-3 ~
kill @s
execute positioned ~ ~-3 ~ run data merge entity @e[distance=..4,tag=KB.Check,limit=1] {Size:0,Health:0.0f}

particle minecraft:block minecraft:dirt ~ ~ ~ 1 0 1 1 50
