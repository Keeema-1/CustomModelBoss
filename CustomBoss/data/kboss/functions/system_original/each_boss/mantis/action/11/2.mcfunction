
execute if score @s kb.action_time matches 46..50 rotated ~ 0 run tp ^ ^ ^0.4
execute if score @s kb.action_time matches 41..45 rotated ~ 0 run tp ^ ^ ^0.2
execute if score @s kb.action_time matches 31..40 rotated ~ 0 run tp ^ ^ ^0.1

#execute if score @s kb.action_time matches 41..50 if predicate kboss:random/500m run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0
execute if score @s kb.action_time matches 50 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0

execute if score @s kb.action_time matches 41..50 if predicate kboss:random/500m at @e[distance=..16,tag=KB.RightArm4,tag=KB.Skin,tag=KB.BossCheck,limit=1] run particle minecraft:sweep_attack ~ ~1.5 ~ 0.1 0.1 0.1 1 1

execute if score @s kb.action_time matches 43 at @e[distance=..16,tag=KB.RightArm4,tag=KB.Skin,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/11/explode

execute if score @s kb.action_time matches 50 run function kboss:system/each_boss/mantis/pose/sting/right/3

execute if score @s kb.action_time matches 40 run function kboss:system/each_boss/mantis/action/common/attack_finish

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/11/finish
