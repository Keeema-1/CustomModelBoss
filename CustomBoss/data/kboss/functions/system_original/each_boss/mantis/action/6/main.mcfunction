
# 方向転換(右)

execute unless score @s kb.action_sub matches 4 unless score @s kb.action_sub matches 8 facing entity @p eyes rotated ~ 0 positioned ^ ^ ^-0.05 rotated as @s run tp @s ~ ~ ~ ~-6 ~

#execute if score @s kb.action_sub matches 1 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/6/to2
execute if score @s kb.action_sub matches 2 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/6/to3
execute if score @s kb.action_sub matches 3 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/6/to4
execute if score @s kb.action_sub matches 4 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/6/to6
#execute if score @s kb.action_sub matches 5 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/6/to6
execute if score @s kb.action_sub matches 6 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/6/to7
execute if score @s kb.action_sub matches 7 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/6/to8
execute if score @s kb.action_sub matches 8 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/mantis/action/6/to2

# プレイヤーを向いたとき
execute at @s run function kboss:system/each_boss/mantis/action/common/player_direction/is_leftside
execute if score @s kb.action_time matches 1.. if data storage kboss:temp {direction:{leftside:0b}} run function kboss:system/each_boss/mantis/action/5/finish

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/5/finish
