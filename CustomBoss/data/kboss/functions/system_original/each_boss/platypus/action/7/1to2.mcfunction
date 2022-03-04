
function kboss:system/each_boss/platypus/pose/bite/right/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 12

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1
playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 2 1.5

tag @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck] add KB.Attack
execute as @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Head,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
