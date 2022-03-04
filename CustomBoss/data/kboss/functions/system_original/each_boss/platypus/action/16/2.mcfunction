
function kboss:system/each_boss/platypus/action/common/space/front

#execute if score @s kb.action_time matches 11.. positioned as @e[tag=KB.Tail2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:cloud ^ ^2 ^-2 0 0 0 0 1

execute if data storage kboss:temp {space:1b} if score @s kb.action_time matches 11..20 rotated ~ 0 run tp ^ ^0.1 ^0.5
execute if data storage kboss:temp {space:1b} if score @s kb.action_time matches 1..10 rotated ~ 0 run tp ^ ^-0.1 ^0.5

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/16/2to3
