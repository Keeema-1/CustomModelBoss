
function kboss:system/each_boss/squirrel/action_change/table/main

#execute store result score @s temp if entity @e[tag=squirrel,tag=Aggressive]
#execute if score @s temp matches ..2 if predicate map:random/500m positioned as @e[tag=Transporter,scores={island=1,area=6,trans_to=5}] positioned ~ ~ ~2 run function map:system/spawn/squirrel/aggressive
#execute if score @s temp matches ..1 if predicate map:random/500m positioned as @e[tag=Transporter,scores={island=1,area=6,trans_to=5}] positioned ~ ~ ~2 run function map:system/spawn/squirrel/aggressive
#execute if score @s temp matches 0 positioned as @e[tag=Transporter,scores={island=1,area=6,trans_to=5}] positioned ~ ~ ~2 run function map:system/spawn/squirrel/aggressive
