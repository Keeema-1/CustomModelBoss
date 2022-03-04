
execute if score @s kb.anime_time matches 5 if predicate kboss:random/500m run function kboss:system/each_boss/mantis/action/99/2_sub3
execute if score @s kb.anime_time matches 1 run function kboss:system/each_boss/mantis/pose/die/2

execute if score @s kb.anime_time matches 0 run scoreboard players set @s kb.anime_time 10
