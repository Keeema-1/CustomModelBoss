
execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/2/2to1

#execute if entity @a[tag=KB.SameArea,distance=..20] run function kboss:system/each_boss/matsuri/action/2/to3
execute if entity @a[distance=..20] run function kboss:system/each_boss/matsuri/action/2/to3

function kboss:system/each_boss/matsuri/action/common/player_direction/is_leftside

execute if data storage kboss:temp {direction:{leftside:1b}} if entity @a[tag=KB.SameArea,distance=..32] run function kboss:system/each_boss/matsuri/action/2/to3
