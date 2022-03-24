
# == <AECに乗せるパターン> ==
## データがないとき
data merge storage kboss:temp {Pose:{Head:[0.0f,0.0f,0.0f]}}
## x
execute store result storage kboss:temp Pose.Head[0] float 1 run scoreboard players get @s kb.rx_global
## y
execute if entity @s[tag=KB.UsePoseZ] run data modify storage kboss:temp Pose.Head[1] set value 0.0f
execute if entity @s[tag=!KB.UsePoseZ] store result storage kboss:temp Pose.Head[1] float 1 run scoreboard players get @s kb.ry_global
## z
execute if entity @s[tag=KB.UsePoseZ] store result storage kboss:temp Pose.Head[2] float 1 run scoreboard players get @s kb.rz_global
execute if entity @s[tag=!KB.UsePoseZ] run data modify storage kboss:temp Pose.Head[2] set value 0.0f
## 反映
data modify entity @s Pose set from storage kboss:temp Pose
execute if entity @s[tag=KB.UsePoseZ] store result entity @s Rotation[0] float 1 run scoreboard players get @s kb.ry_global
# == ==
