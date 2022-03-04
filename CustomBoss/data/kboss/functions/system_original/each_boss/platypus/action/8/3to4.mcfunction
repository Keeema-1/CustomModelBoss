
function kboss:system/each_boss/platypus/pose/dive/front/4

scoreboard players set @s kb.action_sub 4

scoreboard players set @s kb.action_time 40

execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
