
function kboss:system/each_boss/platypus/action/common/space/back

execute if score @s kb.action_time matches 11.. positioned as @e[tag=KB.Tail2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:cloud ^ ^2 ^-2 0 0 0 0 1

execute if data storage kboss:temp {space:1b} if score @s kb.action_time matches 16..20 run tp ^ ^ ^-0.4
execute if data storage kboss:temp {space:1b} if score @s kb.action_time matches 11..15 run tp ^ ^ ^-0.2

execute at @s run function kboss:system/each_boss/platypus/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/15/finish
