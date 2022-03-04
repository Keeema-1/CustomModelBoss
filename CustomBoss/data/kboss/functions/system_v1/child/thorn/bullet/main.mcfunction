
tag @s add KB.AlreadyProcessed
tag @e[distance=..4,tag=KB.BulletSkin,sort=nearest,limit=1] add KB.AlreadyProcessed

scoreboard players remove @s kb.action_time 1

#tp @s ^ ^ ^1.5
execute if entity @s[tag=KB.Left] rotated as @e[tag=KB.BulletSkin,sort=nearest,limit=1] run tp @s ^0.15 ^ ^0.75
execute if entity @s[tag=KB.Center] rotated as @e[tag=KB.BulletSkin,sort=nearest,limit=1] run tp @s ^ ^ ^0.75
execute if entity @s[tag=KB.Right] rotated as @e[tag=KB.BulletSkin,sort=nearest,limit=1] run tp @s ^-0.15 ^ ^0.75

data merge storage kboss:temp {check:0b}

execute rotated as @e[distance=..4,tag=KB.BulletSkin,sort=nearest,limit=1] run particle minecraft:crit ^ ^1.7 ^-1.5 0 0 0 0 1

execute at @s if data storage kboss:temp {check:0b} unless block ~ ~0.5 ~ #kboss:space run function kboss:system/child/thorn/hit

execute at @s if data storage kboss:temp {check:0b} unless score @s kb.action_time matches 0.. run function kboss:system/child/thorn/hit
