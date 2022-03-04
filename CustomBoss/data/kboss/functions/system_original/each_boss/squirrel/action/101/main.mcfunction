
# ムービー

execute if score @s kb.action_time matches 799 run tp @e[tag=KB.BossCheck] -1399 71 1445 90 0
#execute if score @s kb.action_time matches 799 as @e[tag=squirrel,tag=Aggressive] at @s run tp -1399 71 ~

#execute if score @s kb.action_time matches 700.. run tp @a -1405 70 1447 180 0
#execute if score @s kb.action_time matches 600..699 run tp @a -1414 70 1443 0 0
#execute if score @s kb.action_time matches 480..599 run tp @a -1420 72 1442 0 0
#execute if score @s kb.action_time matches 360..479 run tp @a -1420 72 1448 180 0
#execute if score @s kb.action_time matches 359 run tp @a -1421 73 1445 -90 90
#execute if score @s kb.action_time matches 200..358 as @a at @s run tp @s -1421 ~0.03 1445 -90 90

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/squirrel/action/101/1

execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/squirrel/action/101/2

execute if score @s kb.action_sub matches 1..2 rotated 90 0 at @s run tp @s ^ ^ ^0.1 ~ ~

execute if score @s kb.action_time matches 600 run scoreboard players set @s kb.action_sub 3

execute if score @s kb.action_time matches 600 run function kboss:system/each_boss/squirrel/pose/look_around/right/1
execute if score @s kb.action_time matches 480 run function kboss:system/each_boss/squirrel/pose/look_around/left/1

execute if score @s kb.action_time matches 360 run function kboss:system/each_boss/squirrel/pose/bark/1

execute if score @s kb.action_time matches 320 run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 4 0.9

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/squirrel/action/101/finish
