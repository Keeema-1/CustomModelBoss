
execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action/2/1to2

execute if entity @a[tag=KB.SameArea,distance=..20] run function kboss:system/each_boss/martellos/action/2/to3

function kboss:system/each_boss/martellos/action/common/player_direction/is_leftside

execute if data storage kboss:temp {direction:{leftside:0b}} if entity @a[tag=KB.SameArea,distance=..32] run function kboss:system/each_boss/martellos/action/2/to3
