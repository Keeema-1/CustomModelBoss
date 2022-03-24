
function kboss:system/boss/each/martellos/pose/knock/right/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 30

tag @e[distance=..16,tag=KB.Attack,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.ReachAdd1,tag=KB.HitBox,tag=KB.BossCheck] remove KB.ReachAdd1

tag @e[distance=..16,tag=KB.RightArm2,tag=KB.HitBox,tag=KB.BossCheck] add KB.ReachAdd1
tag @e[distance=..16,tag=KB.RightArm2,tag=KB.HitBox,tag=KB.BossCheck] add KB.Attack

execute as @e[distance=..16,tag=KB.Attack,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.7
playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.9
