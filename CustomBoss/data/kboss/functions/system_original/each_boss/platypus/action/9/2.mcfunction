
function kboss:system/each_boss/platypus/action/common/space/left

execute if score @s kb.action_time matches 26..30 if data storage kboss:temp {space:1b} run tp ^0.7 ^ ^
execute if score @s kb.action_time matches 21..25 if data storage kboss:temp {space:1b} run tp ^0.4 ^ ^
execute if score @s kb.action_time matches 11..20 if data storage kboss:temp {space:1b} run tp ^0.1 ^ ^

execute if score @s kb.action_time matches 10 as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

execute at @s run function kboss:system/each_boss/platypus/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/9/finish
