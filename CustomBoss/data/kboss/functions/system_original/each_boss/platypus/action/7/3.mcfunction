
execute if score @s kb.action_time matches 25 run tag @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
execute if score @s kb.action_time matches 25 run execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/platypus/action/7/finish
