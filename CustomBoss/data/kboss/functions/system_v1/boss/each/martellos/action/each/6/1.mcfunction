
execute at @s run function kboss:system/boss/each/martellos/action/common/player_direction/area
execute if data storage kboss:temp {direction:{area:"front"}} run tp @s ~ ~ ~ ~-5 0
execute unless data storage kboss:temp {direction:{area:"front"}} unless data storage kboss:temp {direction:{area:"back"}} run tp @s ~ ~ ~ ~-10 0
execute if data storage kboss:temp {direction:{area:"back"}} run tp @s ~ ~ ~ ~-15 0

# プレイヤーを向いたとき
execute at @s run function kboss:system/boss/each/martellos/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:0b}} run function kboss:system/boss/each/martellos/action/each/6/1to2

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/6/1to2
