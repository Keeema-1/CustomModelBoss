
execute if score @s kb.action_time matches 36..40 rotated ~ 0 run tp ^ ^ ^0.8
execute if score @s kb.action_time matches 31..35 rotated ~ 0 run tp ^ ^ ^0.4
execute if score @s kb.action_time matches 26..30 rotated ~ 0 run tp ^ ^ ^0.2

#execute if score @s kb.action_time matches 41..50 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0
#execute if score @s kb.action_time matches 50 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0

execute if score @s kb.action_time matches 31.. if predicate kboss:random/500m positioned as @e[distance=..16,tag=KB.Head,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:sweep_attack ^ ^1.5 ^2 0.1 0.1 0.1 1 1

execute if score @s kb.action_time matches 20 run function kboss:system/each_boss/mantis/action/common/attack_finish

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/15/finish
