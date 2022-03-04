
execute if score @s kb.anime_time matches 80 run function kboss:system/each_boss/platypus/pose/bark/1

execute if score @s kb.anime_time matches 60 run playsound minecraft:entity.ravager.roar hostile @a[tag=PlayingMovie] ~ ~ ~ 4 0.6
execute if score @s kb.anime_time matches 50 run playsound minecraft:entity.ravager.roar hostile @a[tag=PlayingMovie] ~ ~ ~ 4 0.6
execute if score @s kb.anime_time matches 40 run playsound minecraft:entity.ravager.roar hostile @a[tag=PlayingMovie] ~ ~ ~ 4 0.6

execute if score @s kb.anime_time matches 20..50 run particle minecraft:flash ^ ^2 ^4 0 0 0 0 1

execute if score @s kb.anime_time matches 60 run effect give @a[tag=PlayingMovie] minecraft:speed 2 10 true

#execute if score @s kb.anime_time matches 60..90 as @a[tag=PlayingMovie] at @s rotated ~ 10 run tp @s ^ ^ ^-0.1
execute if score @s kb.anime_time matches 80..90 as @e[tag=MovieCamera] at @s rotated ~ 10 run tp @s ^ ^ ^-0.1
