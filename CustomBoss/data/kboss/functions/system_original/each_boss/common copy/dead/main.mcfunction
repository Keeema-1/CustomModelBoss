
# 各部位
function kboss:system/each_boss/common/main/main
function kboss:system/each_boss/common/skin/main
execute as @e[distance=..16,tag=KB.BossCheck,tag=KB.Skin,tag=!KB.UsePoseZ] run data merge entity @s {Rotation:[0.0f,0.0f]}
