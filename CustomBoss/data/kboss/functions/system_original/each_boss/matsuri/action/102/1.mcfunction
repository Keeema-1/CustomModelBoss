
tp @s ^ ^ ^-0.2 ~12 0

# プレイヤーを向いたとき
execute at @s run function kboss:system/each_boss/martellos/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/each_boss/matsuri/action/102/1to2

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/102/1to2
