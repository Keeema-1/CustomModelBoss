
execute if score @s kb.action_time matches 1..5 run tp ^ ^ ^-0.1
execute if score @s kb.action_time matches 6.. run tp ^ ^ ^-0.2
execute if score @s kb.action_time matches 5 at @e[tag=KB.Tail3,tag=KB.Skin,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/martellos/action/common/knock

execute at @s run function kboss:system/each_boss/martellos/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/martellos/action/9/2to3