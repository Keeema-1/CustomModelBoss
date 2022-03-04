
# 左にターン

# ターン
execute if score @s kb.action_sub matches 1..2 run tp @s ~ ~ ~ ~-5 0

# プレイヤーを向いたとき
execute if score @s kb.action_sub matches 1..2 at @s run function kboss:system/boss/each/martellos/action/common/player_direction/is_leftside
execute if score @s kb.action_sub matches 1..2 if data storage kboss:temp {direction:{leftside:0b}} run function kboss:system/boss/each/martellos/action/each/6/2to3

execute if score @s kb.action_sub matches 0 run function kboss:system/boss/each/martellos/action/each/6/0

execute if score @s kb.action_sub matches 1 run function kboss:system/boss/each/martellos/action/each/6/1

execute if score @s kb.action_sub matches 2 run function kboss:system/boss/each/martellos/action/each/6/2

execute if score @s kb.action_sub matches 3 run function kboss:system/boss/each/martellos/action/each/6/3

execute if score @s kb.action_sub matches 4 run function kboss:system/boss/each/martellos/action/each/6/4
