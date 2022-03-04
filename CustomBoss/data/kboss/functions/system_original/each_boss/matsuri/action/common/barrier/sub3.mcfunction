
execute if data storage kboss:temp {check:1b} run data merge storage kboss:temp {check:2b}

execute if data storage kboss:temp {check:2b} at @s unless block ~ 46 ~ minecraft:barrier unless block ~-1.02 46 ~-1.02 minecraft:barrier unless block ~-1.02 46 ~1.02 minecraft:barrier unless block ~1.02 46 ~-1.02 minecraft:barrier unless block ~1.02 46 ~1.02 minecraft:barrier run data merge storage kboss:temp {check:1b}

execute if data storage kboss:temp {check:2b} run data merge storage kboss:temp {check:0b}
