
#execute if score @s kb.action_time matches 20..60 if predicate kboss:random/500m run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.6
execute if score @s kb.action_time matches 20..60 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.6
execute if score @s kb.action_time matches 20..60 run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 0.8

#execute if score @s kb.action_time matches 20..60 run particle minecraft:flash ^ ^2 ^6 0 0 0 0 1
execute if score @s kb.action_time matches 20..60 positioned as @e[distance=..16,tag=KB.Head,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:flash ^ ^1 ^1.3 0 0 0 0 1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/3/finish
