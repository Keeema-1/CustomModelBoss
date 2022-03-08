
execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/2/1to2

execute if entity @a[tag=KB.Target,distance=..20] run function kboss:system/boss/each/martellos/action/each/2/to3

function kboss:system/boss/each/martellos/action/common/player_direction/is_leftside

execute if data storage kboss:temp {direction:{leftside:0b}} if entity @a[tag=KB.Target,distance=..32] run function kboss:system/boss/each/martellos/action/each/2/to3
