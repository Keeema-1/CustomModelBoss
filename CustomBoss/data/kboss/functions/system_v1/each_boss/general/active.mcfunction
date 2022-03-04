
# サブエンティティ
function kboss:system/each_boss/common/main/main
execute at @s run function kboss:system/each_boss/common/skin/main
execute at @s run function kboss:system/each_boss/common/skin_pos/main
execute at @s as @e[distance=..16,tag=KB.BossCheck,tag=KB.AI] run function kboss:system/each_boss/common/ai/main
execute as @e[distance=..16,tag=KB.BossCheck,tag=KB.Skin,tag=!KB.UsePoseZ] run data merge entity @s {Rotation:[0.0f,0.0f]}
