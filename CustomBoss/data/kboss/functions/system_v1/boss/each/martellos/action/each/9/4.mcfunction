
execute if score @s kb.action_time matches 11..15 run tp ^ ^ ^-0.1
execute if score @s kb.action_time matches 16.. run tp ^ ^ ^-0.2
execute if score @s kb.action_time matches 15 at @e[tag=KB.Tail3,tag=KB.Skin,tag=KB.BossCheck,limit=1] run function kboss:system/boss/each/martellos/action/common/knock

execute at @s run function kboss:system/boss/each/martellos/action/common/ypos/main

execute if score @s kb.action_time matches ..0 run function kboss:system/boss/each/martellos/action/each/9/finish
