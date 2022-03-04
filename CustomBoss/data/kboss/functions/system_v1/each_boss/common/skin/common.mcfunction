
# 目標値へ回転
execute if score @s kb.drx matches 1.. run function kboss:system/each_boss/common/skin/rx/main
execute if score @s kb.dry matches 1.. run function kboss:system/each_boss/common/skin/ry/main
execute if score @s kb.drz matches 1.. run function kboss:system/each_boss/common/skin/rz/main

# スコアをアップデート
function kboss:system/each_boss/common/skin/update
tag @e[distance=..16,tag=KB.Parent,limit=1] remove KB.Parent

# 角度を反映
#execute store result entity @s Rotation[1] float 1 run scoreboard players get @s kb.rx_global
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s kb.ry_global
