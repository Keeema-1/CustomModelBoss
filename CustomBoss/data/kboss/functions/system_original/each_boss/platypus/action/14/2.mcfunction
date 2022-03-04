
function kboss:system/each_boss/platypus/action/common/space/front

execute if score @s kb.action_time matches 11.. positioned as @e[tag=KB.Tail2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:cloud ^-1 ^2 ^2 0 0 0 0 1

execute if data storage kboss:temp {space:1b} if score @s kb.action_time matches 16..25 run tp ^ ^ ^0.3
execute if data storage kboss:temp {space:1b} if score @s kb.action_time matches 11..15 run tp ^ ^ ^0.2
execute if data storage kboss:temp {space:1b} if score @s kb.action_time matches 1..10 run tp ^ ^ ^0.1

execute if score @s kb.action_time matches 23..25 at @s run tp ~ ~0.1 ~

execute if score @s kb.action_time matches 21 at @s run function kboss:system/each_boss/platypus/action/common/thorn/3

execute if score @s kb.action_time matches ..20 at @s run function kboss:system/each_boss/platypus/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/14/finish
