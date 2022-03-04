
execute if score @s kb.action_time matches 31..35 run tp ^ ^ ^0.2
execute if score @s kb.action_time matches 36.. run tp ^ ^ ^0.3
execute if score @s kb.action_time matches 35 at @e[tag=KB.RightArm2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run function kboss:system/boss/each/martellos/action/each/7/knock

execute if score @s kb.action_time matches 25 run function kboss:system/boss/each/martellos/action/each/7/2_sub

execute at @s run function kboss:system/boss/each/martellos/action/common/ypos/main

execute if score @s kb.action_time matches 15 if predicate kboss:random/200m run function kboss:system/boss/each/martellos/action/change/8

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/7/finish