
# →噛みつき

function kboss:system/each_boss/matsuri/pose/bite/front/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 20

playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.5
playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.9

particle minecraft:sweep_attack ^ ^2 ^5 0.1 0.1 0.1 1 2

tag @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.ReachAdd1,tag=KB.AI,tag=KB.BossCheck] remove KB.ReachAdd1

tag @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck] add KB.ReachAdd1
tag @e[distance=..16,tag=KB.Head,tag=KB.AI,tag=KB.BossCheck] add KB.Attack

execute as @e[distance=..16,tag=KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}
