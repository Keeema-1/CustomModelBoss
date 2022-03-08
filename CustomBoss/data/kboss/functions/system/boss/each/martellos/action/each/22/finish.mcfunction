
scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1

execute at @s run function kboss:system/boss/each/common/action/player_direction/is_leftside

execute if score @s kb.temp matches 0 if data storage kboss:temp {direction:{leftside:0b}} run function kboss:system/boss/each/martellos/action/change/14
execute if score @s kb.temp matches 0 if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/boss/each/martellos/action/change/15

execute if score @s kb.temp matches 1 if data storage kboss:temp {direction:{leftside:0b}} run function kboss:system/boss/each/martellos/action/change/7
execute if score @s kb.temp matches 1 if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/boss/each/martellos/action/change/8

scoreboard players remove @s kb.action_time 10
