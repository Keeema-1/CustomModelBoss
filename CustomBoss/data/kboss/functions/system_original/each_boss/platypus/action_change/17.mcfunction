
# 水吐き

function kboss:system/each_boss/platypus/pose/spit/front/1

scoreboard players set @s kb.action 17
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 40

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
