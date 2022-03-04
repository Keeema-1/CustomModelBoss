

execute if score @s kb.action_time matches 10 as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}

function kboss:system/each_boss/platypus/action/common/player_direction/is_leftside

execute if data storage kboss:temp {direction:{leftside:1b}} if score @s kb.action_time matches 1..60 run tp @s ~ ~ ~ ~-1 ~
execute if data storage kboss:temp {direction:{leftside:0b}} if score @s kb.action_time matches 1..60 run tp @s ~ ~ ~ ~1 ~

execute if score @s kb.action_time matches 1..10 at @s rotated ~ 0 run tp @s ^ ^0.2 ^0.1 ~ ~

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/8/2to3
