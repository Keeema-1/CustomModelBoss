
#execute if score @s kb.action_time matches 20..60 run playsound minecraft:entity.dolphin.attack hostile @a ~ ~ ~ 2 1.2
execute if score @s kb.action_time matches 60 run playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0

execute if score @s kb.action_time matches 60 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
execute if score @s kb.action_time matches 55 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
execute if score @s kb.action_time matches 50 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
execute if score @s kb.action_time matches 45 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
execute if score @s kb.action_time matches 40 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
execute if score @s kb.action_time matches 35 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
execute if score @s kb.action_time matches 30 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4

execute if score @s kb.action_time matches 60 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0
execute if score @s kb.action_time matches 55 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0
execute if score @s kb.action_time matches 50 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0
execute if score @s kb.action_time matches 45 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0
execute if score @s kb.action_time matches 40 run playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0
#execute if score @s kb.action_time matches 60 run playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 2 1.3

#playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0
#playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 2 0

#playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 2 1.3
#playsound minecraft:entity.dolphin.attack hostile @a ~ ~ ~ 2 0.5
#playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.7
#playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.9
#playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0.4
#playsound minecraft:entity.silverfish.death hostile @a ~ ~ ~ 2 0

#execute if score @s kb.action_time matches 20..60 run particle minecraft:flash ^ ^2 ^6 0 0 0 0 1
execute if score @s kb.action_time matches 20..60 positioned as @e[distance=..16,tag=KB.Head,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:flash ^ ^1 ^1.3 0 0 0 0 1

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/3/finish
