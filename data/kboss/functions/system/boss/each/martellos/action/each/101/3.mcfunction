
execute if score @s kb.anime_time matches 100.. as @e[tag=platypus_kid] at @s run function kboss:system/boss/each/platypus/action/101/kid_move


execute if score @s kb.anime_time matches 160 run function kboss:system/boss/each/platypus/pose/look_around/left/1

execute if score @s kb.anime_time matches 100 run function kboss:system/boss/each/platypus/pose/normal/2

execute if score @s kb.anime_time matches 91..100 run tp @s ~ ~0.05 ~ ~10 ~

execute if score @s kb.anime_time matches 90 run function kboss:system/boss/each/platypus/pose/run/1
execute if score @s kb.anime_time matches 80 run function kboss:system/boss/each/platypus/pose/run/2
execute if score @s kb.anime_time matches 70 run function kboss:system/boss/each/platypus/pose/run/1
execute if score @s kb.anime_time matches 60 run function kboss:system/boss/each/platypus/pose/run/2
execute if score @s kb.anime_time matches 50 run function kboss:system/boss/each/platypus/pose/run/1
execute if score @s kb.anime_time matches 40 run function kboss:system/boss/each/platypus/pose/run/2
execute if score @s kb.anime_time matches 30 run function kboss:system/boss/each/platypus/pose/run/1
execute if score @s kb.anime_time matches 20 run function kboss:system/boss/each/platypus/pose/run/2
execute if score @s kb.anime_time matches 10 run function kboss:system/boss/each/platypus/pose/run/1

execute if score @s kb.anime_time matches 90 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6
execute if score @s kb.anime_time matches 80 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6
execute if score @s kb.anime_time matches 70 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6
execute if score @s kb.anime_time matches 60 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6
execute if score @s kb.anime_time matches 50 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6
execute if score @s kb.anime_time matches 40 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6
execute if score @s kb.anime_time matches 30 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6
execute if score @s kb.anime_time matches 20 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6
execute if score @s kb.anime_time matches 10 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.6

execute if score @s kb.anime_time matches 1..90 run tp ^ ^ ^0.3

execute if score @s kb.anime_time matches 1..90 as @e[tag=MovieCamera] run tp @s ^ ^ ^6 130 0

execute if score @s kb.anime_time matches ..0 run function kboss:system/boss/each/platypus/action/101/3to4
