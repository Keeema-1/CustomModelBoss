
# 威嚇

function kboss:system/boss/each/common/action/ypos/main

execute if predicate kboss:random/200m at @e[distance=..16,tag=KB.Head,tag=KB.SkinPos,limit=1] run particle minecraft:falling_honey ^ ^1.7 ^0.6 0.2 0.1 0.2 1 1

execute if score @s kb.action_time matches 159 at @e[distance=..16,tag=KB.Head,tag=KB.SkinPos,limit=1] run particle minecraft:cloud ^ ^1.7 ^0.6 0.2 0.1 0.2 0.01 3
execute if score @s kb.action_time matches 159 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.5
execute if score @s kb.action_time matches 100 run function kboss:system/boss/each/martellos/pose/bark/2

execute if score @s kb.action_time matches 80 run function kboss:system/boss/each/martellos/pose/bark/1
execute if score @s kb.action_time matches 80 at @e[distance=..16,tag=KB.Head,tag=KB.SkinPos,limit=1] run particle minecraft:cloud ^ ^1.7 ^0.6 0.2 0.1 0.2 0.01 3
execute if score @s kb.action_time matches 80 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.5
execute if score @s kb.action_time matches 50 run function kboss:system/boss/each/martellos/pose/bark/2

execute if score @s kb.action_time matches 30 run function kboss:system/boss/each/martellos/pose/bark/1
execute if score @s kb.action_time matches 30 at @e[distance=..16,tag=KB.Head,tag=KB.SkinPos,limit=1] run particle minecraft:cloud ^ ^1.7 ^0.6 0.2 0.1 0.2 0.01 3
execute if score @s kb.action_time matches 30 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.5
execute if score @s kb.action_time matches 0 run function kboss:system/boss/each/martellos/pose/bark/2

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/25/finish
