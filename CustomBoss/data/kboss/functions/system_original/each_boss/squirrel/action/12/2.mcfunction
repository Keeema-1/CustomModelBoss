
execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/12/finish

execute if entity @a[tag=KB.SameArea,distance=..20] run function kboss:system/each_boss/squirrel/action/12/to3

function kboss:system/each_boss/squirrel/action/common/player_direction/is_leftside

execute if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/each_boss/squirrel/action/12/to3
