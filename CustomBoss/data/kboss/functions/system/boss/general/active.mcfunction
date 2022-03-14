
# サブエンティティ
#function kboss:system/boss/each/action
execute at @s run function kboss:system/boss/each/skin
execute at @s run function kboss:system/boss/each/skin_pos
#execute at @s as @e[distance=..16,tag=KB.BossCheck,tag=KB.HitBox] run function kboss:system/boss/each/hitbox
#execute as @e[distance=..16,tag=KB.BossCheck,tag=KB.Skin,tag=!KB.UsePoseZ] run data merge entity @s {Rotation:[0.0f,0.0f]}
