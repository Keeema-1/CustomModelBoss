
function kboss:system/each_boss/platypus/pose/jump/left/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 20

#playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0

execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:0b}
