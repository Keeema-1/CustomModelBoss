
# データがないとき
execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.0001f,0.0001f,0.0001f]


# rx

execute store result score @s kb.rx_global run scoreboard players get @e[distance=..16,tag=KB.BossCheck,tag=KB.Parent,limit=1] kb.rx_global

scoreboard players operation @s kb.rx_global += @s kb.rx

execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s kb.rx_global



# ry

execute store result score @s kb.ry_global run scoreboard players get @e[distance=..16,tag=KB.BossCheck,tag=KB.Parent,limit=1] kb.ry_global

#scoreboard players set $2 kb.temp 2
#scoreboard players operation @s kb.temp = @s kb.yx
#scoreboard players operation @s kb.temp /= $2 kb.temp

scoreboard players operation @s kb.ry_global += @s kb.ry

#execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s kb.ry_global
#execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s kb.ry



# rz

execute store result score @s kb.rz_global run scoreboard players get @e[distance=..16,tag=KB.BossCheck,tag=KB.Parent,limit=1] kb.rz_global

scoreboard players operation @s kb.rz_global += @s kb.rz

execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s kb.rz_global

