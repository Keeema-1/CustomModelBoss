
execute at @s run function kboss:system/each_boss/matsuri/action/common/player_direction/area
execute if data storage kboss:temp {direction:{area:"front"}} run tp @s ~ ~ ~ ~10 0
execute unless data storage kboss:temp {direction:{area:"front"}} unless data storage kboss:temp {direction:{area:"back"}} run tp @s ~ ~ ~ ~10 0
execute if data storage kboss:temp {direction:{area:"back"}} run tp @s ~ ~ ~ ~15 0

# プレイヤーを向いたとき
execute at @s run function kboss:system/each_boss/matsuri/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/each_boss/matsuri/action/5/1to2

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/5/1to2
