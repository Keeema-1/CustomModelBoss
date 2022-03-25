
function kboss:system/boss/each/martellos/pose/push/2

scoreboard players set @s kb.action_sub 2

scoreboard players set @s kb.action_time 10

tag @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.HitBox,tag=KB.LeftArm2,tag=KB.BossCheck] add KB.Attack
tag @e[distance=..16,tag=KB.HitBox,tag=KB.RightArm2,tag=KB.BossCheck] add KB.Attack
execute as @e[distance=..16,tag=KB.Attack,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}

playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.4
