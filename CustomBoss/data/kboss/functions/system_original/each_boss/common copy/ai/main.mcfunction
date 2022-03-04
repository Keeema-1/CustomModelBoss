
execute store result score @s kb.health run data get entity @s Health

scoreboard players operation $system kb.health += @s kb.health

execute if score @s kb.hp_remove_500 matches 1.. run function kboss:system/each_boss/common/ai/hp_remove_500

execute unless score @s kb.health matches 500.. run function kboss:system/each_boss/common/ai/hp_under_500

execute if entity @s[tag=KB.Matsuri] run function kboss:system/each_boss/matsuri/ai/main
execute if entity @s[tag=KB.BigSquirrel] run function kboss:system/each_boss/squirrel/ai/main
execute if entity @s[tag=KB.Platypus] run function kboss:system/each_boss/platypus/ai/main
execute if entity @s[tag=KB.Martellos] run function kboss:system/each_boss/martellos/ai/main
