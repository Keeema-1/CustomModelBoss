
# == <AECに乗せないパターン> ==
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s kb.rx_global
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s kb.ry_global
## 防具立てはRotation[0]の見た目が反映されないため
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0.01f,0.0f,0.0f]}}
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s kb.rx_global
# == ==
