
execute if score @s kb.action_time matches 60 run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 4 0.6
execute if score @s kb.action_time matches 50 run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 4 0.6
execute if score @s kb.action_time matches 40 run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 4 0.6

execute if score @s kb.action_time matches 20..60 run particle minecraft:flash ^ ^2 ^4 0 0 0 0 1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/4/finish
