
function kboss:system/each_boss/squirrel/action/common/space/back

execute if score @s kb.action_time matches 11.. if data storage kboss:temp {space:1b} run tp ^ ^ ^-0.4

execute if score @s kb.action_time matches 14 positioned as @e[distance=..16,tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] rotated ~0 ~ run particle minecraft:cloud ^ ^1 ^-5 0 0 0 0 1
execute if score @s kb.action_time matches 12 positioned as @e[distance=..16,tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] rotated ~-20 ~ run particle minecraft:cloud ^ ^1 ^-5 0 0 0 0 1
execute if score @s kb.action_time matches 10 positioned as @e[distance=..16,tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] rotated ~-40 ~ run particle minecraft:cloud ^ ^1 ^-5 0 0 0 0 1
execute if score @s kb.action_time matches 8 positioned as @e[distance=..16,tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] rotated ~-60 ~ run particle minecraft:cloud ^ ^1 ^-5 0 0 0 0 1
execute if score @s kb.action_time matches 6 positioned as @e[distance=..16,tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] rotated ~-80 ~ run particle minecraft:cloud ^ ^1 ^-5 0 0 0 0 1
execute if score @s kb.action_time matches 4 positioned as @e[distance=..16,tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] rotated ~-100 ~ run particle minecraft:cloud ^ ^1 ^-5 0 0 0 0 1

execute at @s run function kboss:system/each_boss/squirrel/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/9/finish
