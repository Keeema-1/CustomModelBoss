
execute if score @s kb.angry_time matches 1.. run scoreboard players remove @s kb.angry_time 1

scoreboard players operation @s kb.temp = @s kb.last_angry_health
scoreboard players operation @s kb.temp -= @s kb.health

execute unless score @s kb.angry_time matches 1.. if score @s kb.temp matches 400.. if predicate kboss:random/5m run function kboss:system/boss/each/martellos/action/angry/will_start
