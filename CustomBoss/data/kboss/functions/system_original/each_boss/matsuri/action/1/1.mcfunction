
execute rotated ~ 0 run tp @s ^ ^ ^0.6

execute if score @s kb.anime_time matches 4..6 at @s run tp ~ ~0.3 ~
execute if score @s kb.anime_time matches 1..3 at @s run tp ~ ~-0.2 ~

execute if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/matsuri/action/1/1to2
