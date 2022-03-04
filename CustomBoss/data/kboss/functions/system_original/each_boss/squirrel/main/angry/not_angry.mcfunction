
execute if score @s kb.angry_time matches 1.. run scoreboard players remove @s kb.angry_time 1

scoreboard players operation @s temp = @s kb.last_angry_health
scoreboard players operation @s temp -= @s kb.health

execute unless score @s kb.angry_time matches 1.. if score @s temp matches 200.. if predicate kboss:random/5m run function kboss:system/each_boss/squirrel/main/angry/start
