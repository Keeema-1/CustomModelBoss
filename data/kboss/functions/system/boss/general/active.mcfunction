
# ボス全体の動き
function kboss:system/boss/each/action
# モデルエンティティの位置以外
execute at @s run function kboss:system/boss/each/skin
# モデルエンティティの位置
execute at @s run function kboss:system/boss/each/skin_pos
# 当たり判定用エンティティ
execute at @s as @e[distance=..16,tag=KB.BossCheck,tag=KB.HitBox] run function kboss:system/boss/each/hitbox
#execute as @e[distance=..16,tag=KB.BossCheck,tag=KB.Skin,tag=!KB.UsePoseZ] run data merge entity @s {Rotation:[0.0f,0.0f]}
