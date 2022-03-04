
# その場でノーマルアニメーション

execute facing entity @p eyes rotated ~ 0 run tp ^ ^ ^0.2

execute if score @s kb.action_sub matches 1 if score @s kb.anime_time matches 10 run tp ^ ^ ^2

execute if score @s kb.action_sub matches 1 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/squirrel/action/102/1to2

execute if score @s kb.action_sub matches 2 if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/squirrel/action/102/2to1
