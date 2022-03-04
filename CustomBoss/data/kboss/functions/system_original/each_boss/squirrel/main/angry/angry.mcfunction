
execute if score @s kb.angry_time matches 1.. run scoreboard players remove @s kb.angry_time 1

execute if entity @s[tag=KB.Angry] positioned as @e[distance=..16,tag=KB.Head,tag=KB.Skin,limit=1] if predicate kboss:random/200m run particle minecraft:poof ^ ^1.5 ^1 0.05 0.05 0.05 0 1

execute unless score @s kb.angry_time matches 1.. run function kboss:system/each_boss/squirrel/main/angry/finish
