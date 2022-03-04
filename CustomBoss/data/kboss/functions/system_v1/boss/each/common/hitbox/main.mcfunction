
execute store result score @s kb.health run data get entity @s Health

scoreboard players operation $boss_health kb.temp += @s kb.health

execute if score @s kb.hp_remove_500 matches 1.. run function kboss:system/boss/each/common/hitbox/hp_remove_500

execute unless score @s kb.health matches 500.. run function kboss:system/boss/each/common/hitbox/hp_under_500
