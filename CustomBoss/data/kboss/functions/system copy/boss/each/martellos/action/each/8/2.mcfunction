
execute if score @s kb.action_time matches 21..25 run tp ^ ^ ^0.2
execute if score @s kb.action_time matches 26.. run tp ^ ^ ^0.3
execute if score @s kb.action_time matches 25 at @e[tag=KB.LeftArm2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run function kboss:system/boss/each/martellos/action/common/knock

execute if score @s kb.action_time matches 15 run function kboss:system/boss/each/martellos/action/each/8/2_sub

execute at @s run function kboss:system/boss/each/common/action/ypos/main

execute if score @s kb.action_time matches 10 if entity @a[distance=..4] if predicate kboss:random/200m run function kboss:system/boss/each/martellos/action/each/27/start

execute if score @s kb.action_time matches 5 if predicate kboss:random/200m run function kboss:system/boss/each/martellos/action/each/7/start

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/8/finish