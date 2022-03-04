
execute if entity @s[tag=!KB.Angry] if score @s kb.action_time matches 120 run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 4 0.9
execute if entity @s[tag=KB.Angry] if score @s kb.action_time matches 20..120 if predicate kboss:random/500m run playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 4 1.1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/11/finish
