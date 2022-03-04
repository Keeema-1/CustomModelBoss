
#function kboss:system/each_boss/matsuri/pose/rotation_left1

scoreboard players set @s kb.action_sub 3

scoreboard players set @s kb.action_time 20

execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b}

tag @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.ReachAdd1,tag=KB.AI,tag=KB.BossCheck] remove KB.ReachAdd1

execute as @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
