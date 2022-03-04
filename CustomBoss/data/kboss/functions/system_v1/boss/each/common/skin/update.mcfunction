
# 目標値へ回転
execute if score @s kb.drx matches 1.. run function kboss:system/boss/each/common/skin/rx/main
execute if score @s kb.dry matches 1.. run function kboss:system/boss/each/common/skin/ry/main
execute if score @s kb.drz matches 1.. run function kboss:system/boss/each/common/skin/rz/main


# スコアを計算
## rx
execute store result score @s kb.rx_global run scoreboard players get @e[distance=..16,tag=KB.BossCheck,tag=KB.Parent,limit=1] kb.rx_global
scoreboard players operation @s kb.rx_global += @s kb.rx
## ry
execute store result score @s kb.ry_global run scoreboard players get @e[distance=..16,tag=KB.BossCheck,tag=KB.Parent,limit=1] kb.ry_global
scoreboard players operation @s kb.ry_global += @s kb.ry
## rz
execute store result score @s kb.rz_global run scoreboard players get @e[distance=..16,tag=KB.BossCheck,tag=KB.Parent,limit=1] kb.rz_global
scoreboard players operation @s kb.rz_global += @s kb.rz


# 角度を反映
## データがないとき
execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.0001f,0.0001f,0.0001f]
## x
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s kb.rx_global
#execute store result entity @s Rotation[1] float 1 run scoreboard players get @s kb.rx_global
## y
execute if entity @s[tag=!KB.UsePoseZ] if entity @s store result entity @s Pose.Head[1] float 1 run scoreboard players get @s kb.ry_global
execute if entity @s[tag=KB.UsePoseZ] run data modify entity @s Pose.Head[1] set value 0.0f
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s kb.ry_global
## z
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s kb.rz_global


tag @e[distance=..16,tag=KB.Parent,limit=1] remove KB.Parent
