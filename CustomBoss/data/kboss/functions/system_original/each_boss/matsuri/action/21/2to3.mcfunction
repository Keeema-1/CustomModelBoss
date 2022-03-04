
function kboss:system/each_boss/matsuri/pose/step/back/1

scoreboard players set @s kb.action_sub 3

scoreboard players set @s kb.action_time 10

particle minecraft:poof ^ ^ ^3 1 0 1 0 20

playsound minecraft:entity.ravager.step block @a ~ ~ ~ 2 0
playsound minecraft:entity.ravager.step block @a ~ ~ ~ 2 0

tag @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.ReachAdd1,tag=KB.AI,tag=KB.BossCheck] remove KB.ReachAdd1

execute as @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
