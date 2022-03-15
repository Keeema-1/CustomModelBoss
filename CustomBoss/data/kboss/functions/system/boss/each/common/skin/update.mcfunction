
# 目標値へ回転
execute if score @s kb.drx matches 1.. run function kboss:system/boss/each/common/skin/rx/main
execute if score @s kb.dry matches 1.. run function kboss:system/boss/each/common/skin/ry/main
execute if score @s kb.drz matches 1.. run function kboss:system/boss/each/common/skin/rz/main


# スコアを計算
## rx
execute store result score @s kb.rx_global run scoreboard players get $parent kb.rx_global
scoreboard players operation @s kb.rx_global += @s kb.rx
## ry
execute store result score @s kb.ry_global run scoreboard players get $parent kb.ry_global
scoreboard players operation @s kb.ry_global += @s kb.ry
## rz
execute store result score @s kb.rz_global run scoreboard players get $parent kb.rz_global
scoreboard players operation @s kb.rz_global += @s kb.rz


# 角度を反映
function kboss:system/boss/each/common/skin/update_sub

data remove storage kboss:temp Pose
data remove storage kboss:temp Rotation

scoreboard players reset $parent
