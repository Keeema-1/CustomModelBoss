
function kboss:system/each_boss/matsuri/pose/rotate/left/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 14
#scoreboard players set @s kb.action_time 35

tag @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.ReachAdd1,tag=KB.AI,tag=KB.BossCheck] remove KB.ReachAdd1

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] add KB.ReachAdd1
tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] add KB.Attack

execute as @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
