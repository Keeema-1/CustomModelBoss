
function kboss:system/each_boss/martellos/pose/tackle/right/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 15

#tag @e[distance=..16,tag=KB.RightArm2,tag=KB.AI,tag=KB.BossCheck] add KB.Attack
#execute as @e[distance=..16,tag=KB.RightArm2,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
