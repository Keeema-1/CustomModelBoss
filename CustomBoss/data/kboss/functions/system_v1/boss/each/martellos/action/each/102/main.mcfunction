
# 右にターン

# ターン
execute if score @s kb.action_sub matches 1..3 run tp @s ~ ~ ~ ~6 0

# プレイヤーを向いたとき
execute if score @s kb.action_sub matches 1..3 at @s run function kboss:system/boss/each/martellos/action/common/player_direction/is_leftside
execute if score @s kb.action_sub matches 1..3 if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/boss/each/martellos/action/each/102/3to4

execute if score @s kb.action_sub matches 0 run function kboss:system/boss/each/martellos/action/each/102/0

execute if score @s kb.action_sub matches 1 run function kboss:system/boss/each/martellos/action/each/102/1

execute if score @s kb.action_sub matches 2 run function kboss:system/boss/each/martellos/action/each/102/2

execute if score @s kb.action_sub matches 3 run function kboss:system/boss/each/martellos/action/each/102/3

execute if score @s kb.action_sub matches 4 run function kboss:system/boss/each/martellos/action/each/102/4
