
function kboss:system/each_boss/platypus/pose/tail/back/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 20

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0

#tag @e[distance=..16,tag=KB.Tail2,tag=KB.AI,tag=KB.BossCheck] add KB.Attack
execute as @e[distance=..16,tag=KB.Tail2,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Tail2,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
