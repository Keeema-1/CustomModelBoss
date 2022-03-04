
function kboss:system/each_boss/platypus/pose/spit/front/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 20

#playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0

#tag @e[distance=..16,tag=KB.Tail2,tag=KB.AI,tag=KB.BossCheck] add KB.Attack
#execute as @e[distance=..16,tag=KB.Tail2,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:0b}
#execute as @e[distance=..16,tag=!KB.Tail2,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

execute at @s positioned ^ ^4 ^3 run function kboss:system/each_boss/platypus/action/common/water_bullet/1
playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 2 0.8
playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 2 1.5