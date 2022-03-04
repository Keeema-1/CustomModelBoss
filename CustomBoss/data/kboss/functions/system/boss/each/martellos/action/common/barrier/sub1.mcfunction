
data merge storage kboss:temp {check:0b}

execute at @s unless block ~ 46 ~ minecraft:barrier unless block ~-0.51 46 ~-0.51 minecraft:barrier unless block ~-0.51 46 ~0.51 minecraft:barrier unless block ~0.51 46 ~-0.51 minecraft:barrier unless block ~0.51 46 ~0.51 minecraft:barrier run data merge storage kboss:temp {check:1b}
