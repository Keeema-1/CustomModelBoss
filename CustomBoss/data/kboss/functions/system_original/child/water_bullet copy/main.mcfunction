
scoreboard players remove @s kb.action_time 1

execute if score @s kb.action_time matches 91.. rotated as @e[tag=KB.BulletSkin,sort=nearest,limit=1] rotated ~ 0 run tp @s ^ ^0.2 ^0.2
execute if score @s kb.action_time matches 86..90 rotated as @e[tag=KB.BulletSkin,sort=nearest,limit=1] rotated ~ 0 run tp @s ^ ^0.1 ^0.2
execute if score @s kb.action_time matches 81..85 rotated as @e[tag=KB.BulletSkin,sort=nearest,limit=1] rotated ~ 0 run tp @s ^ ^-0.1 ^0.2
execute if score @s kb.action_time matches 71..80 rotated as @e[tag=KB.BulletSkin,sort=nearest,limit=1] rotated ~ 0 run tp @s ^ ^-0.2 ^0.2
execute if score @s kb.action_time matches ..70 rotated as @e[tag=KB.BulletSkin,sort=nearest,limit=1] rotated ~ 0 run tp @s ^ ^-0.4 ^0.2

execute as @e[tag=KB.BulletSkin,sort=nearest,limit=1] unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[1.0f,1.0f,1.0f]}}
execute store result entity @e[tag=KB.BulletSkin,sort=nearest,limit=1] Pose.Head[1] float 20 run scoreboard players get @s kb.action_time

particle minecraft:splash ~ ~1.5 ~ 0 0 0 1 1

data merge storage kboss:temp {check:0b}

execute if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function kboss:system/child/water_bullet/hit

execute at @s if data storage kboss:temp {check:0b} unless block ~ ~0.5 ~ #kboss:space run function kboss:system/child/water_bullet/hit

execute at @s if data storage kboss:temp {check:0b} unless score @s kb.action_time matches 0.. run function kboss:system/child/water_bullet/hit
