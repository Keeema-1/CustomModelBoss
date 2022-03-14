
# 歩く

function kboss:system/boss/each/common/action/space/front

execute if data storage kboss:temp {space:1b} if entity @s[tag=!KB.Angry] facing entity @p feet rotated ~ 0 run tp ^ ^ ^0.5
execute if data storage kboss:temp {space:1b} if entity @s[tag=KB.Angry] facing entity @p feet rotated ~ 0 run tp ^ ^ ^0.6

execute if score @s kb.action_sub matches 1 run function kboss:system/boss/each/martellos/action/each/1/1

execute if score @s kb.action_sub matches 2 run function kboss:system/boss/each/martellos/action/each/1/2

execute if score @s kb.action_time matches 1.. if entity @a[distance=..6] run function kboss:system/boss/each/martellos/action/each/1/finish

execute if score @s kb.action_time matches 1.. if entity @a[distance=8..16] if predicate kboss:random/50m run function kboss:system/boss/each/martellos/action/each/23/start

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/1/finish
