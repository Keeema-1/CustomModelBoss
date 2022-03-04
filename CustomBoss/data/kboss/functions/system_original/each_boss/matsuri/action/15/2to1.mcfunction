
function kboss:system/each_boss/matsuri/pose/run/1

scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.anime_time 7

function kboss:system/each_boss/matsuri/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{lefttside:1b}} run tp @s ^ ^ ^ ~10 ~
execute if data storage kboss:temp {direction:{lefttside:0b}} run tp @s ^ ^ ^ ~-10 ~

execute at @s run function kboss:system/each_boss/matsuri/action/common/player_direction/is_frontside
execute if data storage kboss:temp {direction:{frontside:0b}} unless entity @a[distance=..6] run function kboss:system/each_boss/matsuri/action/15/finish

