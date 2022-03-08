
data merge storage kboss:temp {check:0b}

execute at @s unless block ~ 46 ~ minecraft:barrier unless block ~-1.02 46 ~-1.02 minecraft:barrier unless block ~-1.02 46 ~1.02 minecraft:barrier unless block ~1.02 46 ~-1.02 minecraft:barrier unless block ~1.02 46 ~1.02 minecraft:barrier run data merge storage kboss:temp {check:1b}

#execute if data storage kboss:temp {check:0b} facing -1315 74 1199 at @s positioned ^ ^ ^0.3 run tp @s ~ ~ ~ ~ ~
