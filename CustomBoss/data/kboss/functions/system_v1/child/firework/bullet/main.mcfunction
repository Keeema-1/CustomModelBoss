
tag @s add KB.AlreadyProcessed
tag @e[distance=..4,tag=KB.BulletSkin,tag=KB.Firework,sort=nearest,limit=1] add KB.AlreadyProcessed

scoreboard players remove @s kb.action_time 1

#tp @s ^ ^ ^1.5
tp @s ^ ^ ^1

#particle minecraft:crit ~ ~ ~ 0 0 0 0 1
particle minecraft:flame ^ ^1 ^-2 0 0 0 0 1

data merge storage kboss:temp {check:0b}

#execute positioned ~-2.5 ~-2.5 ~-2.5 if entity @a[dx=5,dy=5,dz=5] run function kboss:system/bullet/firework/blast
execute if entity @a[distance=..3,gamemode=!creative,gamemode=!spectator] run function kboss:system/child/firework/blast

execute if data storage kboss:temp {check:0b} if score @s kb.action_time matches ..3 if entity @e[distance=..4,tag=KB.Firework,tag=KB.Mine] run function kboss:system/child/firework/blast

execute if data storage kboss:temp {check:0b} unless block ~ ~ ~ #kboss:airs run function kboss:system/child/firework/blast

execute if data storage kboss:temp {check:0b} unless score @s kb.action_time matches 0.. run function kboss:system/child/firework/blast
