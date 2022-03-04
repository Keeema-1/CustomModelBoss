
execute if score @s kb.anime_time matches 155 in the_nether run tp @e[tag=MovieCamera] 0 60 0
execute if score @s kb.anime_time matches 155 run tp @e[tag=MovieCamera] -1341 76 1177 -60 50

execute if score @s kb.anime_time matches 140..155 run tp @s ~ ~ ~0.4 ~-6 ~

execute if score @s kb.anime_time matches 105 run function kboss:system/each_boss/platypus/pose/tail/left/5

execute if score @s kb.anime_time matches 105 run scoreboard players set @e[tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,tag=KB.Platypus] kb.rx_goal -20



execute if score @s kb.anime_time matches 91..105 positioned as @e[tag=KB.Tail2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:cloud ^-1 ^2 ^2 0 0 0 0 1

execute if score @s kb.anime_time matches 96..105 run tp ^ ^ ^0.5
execute if score @s kb.anime_time matches 91..95 run tp ^ ^ ^0.2
execute if score @s kb.anime_time matches 81..90 run tp ^ ^ ^0.1

execute if score @s kb.anime_time matches 103..105 at @s run tp ~ ~0.1 ~

execute if score @s kb.anime_time matches 105 run playsound minecraft:entity.player.attack.sweep hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0

execute if score @s kb.anime_time matches 100..102 at @s run tp ~ ~-0.1 ~

execute if score @s kb.anime_time matches 100 run summon minecraft:salmon -1339 74 1182 {Tags:["OnlyMovieEntity","var1"],Motion:[0.1d,0.8d,-0.8d],DeathLootTable:"minecraft:empty"}
execute if score @s kb.anime_time matches 100 run summon minecraft:salmon -1339 74 1182 {Tags:["OnlyMovieEntity","var2"],Motion:[0.2d,0.8d,-0.8d],DeathLootTable:"minecraft:empty"}
execute if score @s kb.anime_time matches 100 run summon minecraft:salmon -1339 74 1182 {Tags:["OnlyMovieEntity","var3"],Motion:[0.0d,0.8d,-0.8d],DeathLootTable:"minecraft:empty"}

execute if score @s kb.anime_time matches 100 run playsound minecraft:entity.player.splash.high_speed master @a[tag=PlayingMovie] ~ ~ ~ 2 1
execute if score @s kb.anime_time matches 100 run playsound minecraft:entity.player.splash.high_speed master @a[tag=PlayingMovie] ~ ~ ~ 2 1
execute if score @s kb.anime_time matches 100 run particle minecraft:splash ~-3 ~1 ~ 1 0.5 1 1 100

execute if score @s kb.anime_time matches 100 run playsound minecraft:entity.ravager.attack hostile @a[tag=PlayingMovie] ~ ~ ~ 2 0.8

execute if score @s kb.anime_time matches ..100 as @e[tag=platypus_kid] at @s run function kboss:system/each_boss/platypus/action/101/kid_move

execute if score @s kb.anime_time matches 40..60 as @e[tag=OnlyMovieEntity,type=minecraft:salmon,nbt={OnGround:1b}] run data merge entity @s {NoAI:1b}

#execute if score @s kb.anime_time matches 120 run tp @e[tag=MovieCamera] -1341 76 1177 -60 50

execute if score @s kb.anime_time matches 71..110 as @e[tag=MovieCamera] at @s run tp ~ ~0.05 ~-0.1

execute if score @s kb.anime_time matches ..0 run function kboss:system/each_boss/platypus/action/101/2to3
