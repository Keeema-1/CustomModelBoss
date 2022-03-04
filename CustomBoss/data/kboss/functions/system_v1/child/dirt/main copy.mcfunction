
scoreboard players remove @s kb.action_time 1

execute if score @s kb.action_time matches 97.. run tp @s ^ ^0.3 ^
execute if score @s kb.action_time matches 93..96 run tp @s ^ ^0.1 ^
execute if score @s kb.action_time matches 89..92 run tp @s ^ ^-0.1 ^
execute if score @s kb.action_time matches 85..88 run tp @s ^ ^-0.3 ^
execute if score @s kb.action_time matches ..84 run tp @s ^ ^-0.6 ^

execute if score @s kb.action matches 1 at @s run tp ^ ^ ^0.1
execute if score @s kb.action matches 2 at @s run tp ^ ^ ^0.3
execute if score @s kb.action matches 3 at @s run tp ^ ^ ^0.6

execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[1.0f,1.0f,1.0f]}}
execute store result entity @s Pose.Head[1] float 20 run scoreboard players get @s kb.action_time
execute store result entity @s Pose.Head[0] float 10 run scoreboard players get @s kb.action_time

particle minecraft:block minecraft:dirt ~ ~1.5 ~ 0 0 0 1 1

data merge storage kboss:temp {check:0b}

execute positioned ~-1 ~2 ~-1 if entity @a[dx=1,dy=0,dz=1,gamemode=!creative,gamemode=!spectator] at @a[dx=1,dy=0,dz=1,gamemode=!creative,gamemode=!spectator,limit=1] run function kboss:system/child/dirt/hit

execute at @s if data storage kboss:temp {check:0b} unless block ~ ~3 ~ #kboss:space_and_barrier positioned ~ ~3 ~ run function kboss:system/child/dirt/hit

execute at @s if data storage kboss:temp {check:0b} unless score @s kb.action_time matches 0.. run function kboss:system/child/dirt/hit
