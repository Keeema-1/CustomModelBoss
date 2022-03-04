
# 疲労

execute if entity @s[tag=KB.Angry] at @e[distance=..16,tag=KB.Head,tag=KB.Skin,limit=1] if predicate kboss:random/200m run particle minecraft:landing_honey ^ ^ ^1 0.05 0.05 0.05 1 1

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/squirrel/action/13/1

execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/squirrel/action/13/2

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/13/finish

