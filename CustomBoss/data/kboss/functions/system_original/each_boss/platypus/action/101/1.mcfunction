
execute if score @s kb.anime_time matches 51.. as @e[tag=MovieCamera] at @s run tp ^ ^ ^0.1

execute if score @s kb.anime_time matches 90 run effect give @a[tag=PlayingMovie] minecraft:slowness 2 10 true

execute if score @s kb.anime_time matches 50 run function kboss:system/each_boss/platypus/pose/jump/left/2

execute if score @s kb.anime_time matches 50 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6

execute if score @s kb.anime_time matches 50 in the_nether run tp @e[tag=MovieCamera] 0 60 0
execute if score @s kb.anime_time matches 50 run tp @e[tag=MovieCamera] -1350 74.5 1182 90 -60

execute if score @s kb.anime_time matches 41..50 run tp ~0.5 ~0.5 ~
execute if score @s kb.anime_time matches 36..40 run tp ~0.5 ~0.2 ~
execute if score @s kb.anime_time matches 31..35 run tp ~0.5 ~-0.3 ~
execute if score @s kb.anime_time matches 21..30 run tp ~0.5 ~-0.7 ~
execute if score @s kb.anime_time matches 11..20 run tp ~0.5 ~-1 ~
#execute if score @s kb.anime_time matches 251..270 run tp ~0.5 ~-0.8 ~

execute if score @s kb.anime_time matches 20 in the_nether run tp @e[tag=MovieCamera] 0 60 0
execute if score @s kb.anime_time matches 20 run tp @e[tag=MovieCamera] -1337 73.5 1183 90 -30

execute if score @s kb.anime_time matches 15 run function kboss:system/each_boss/platypus/pose/jump/left/3

execute if score @s kb.anime_time matches 11..15 run particle minecraft:splash ~ ~1 ~ 2 1 2 1 100
execute if score @s kb.anime_time matches 15 run playsound minecraft:entity.player.splash.high_speed master @a[tag=PlayingMovie] ~ ~ ~ 2 1
execute if score @s kb.anime_time matches 15 run playsound minecraft:entity.player.splash.high_speed master @a[tag=PlayingMovie] ~ ~ ~ 2 1

execute if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/platypus/action/101/1to2
