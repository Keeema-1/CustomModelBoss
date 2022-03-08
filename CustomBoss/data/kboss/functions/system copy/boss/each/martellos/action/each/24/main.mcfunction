
# 威嚇

function kboss:system/boss/each/common/action/ypos/main

execute if score @s kb.action_time matches 95..100 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.7
execute if score @s kb.action_time matches 95..100 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.9
execute if score @s kb.action_time matches 90 run function kboss:system/boss/each/martellos/pose/bark/2

execute if score @s kb.action_time matches 70 run function kboss:system/boss/each/martellos/pose/bark/1_fast
execute if score @s kb.action_time matches 68..70 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.7
execute if score @s kb.action_time matches 68..70 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.9
execute if score @s kb.action_time matches 65 run function kboss:system/boss/each/martellos/pose/bark/2

execute if score @s kb.action_time matches 55 run function kboss:system/boss/each/martellos/pose/bark/1_fast
execute if score @s kb.action_time matches 45..55 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.7
execute if score @s kb.action_time matches 45..55 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.9
execute if score @s kb.action_time matches 20 run function kboss:system/boss/each/martellos/pose/bark/2

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/24/finish
