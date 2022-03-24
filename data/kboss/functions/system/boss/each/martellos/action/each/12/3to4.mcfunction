
function kboss:system/boss/each/martellos/pose/tackle/right/4

scoreboard players set @s kb.action_sub 4

scoreboard players set @s kb.action_time 10

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0


tag @e[distance=..16,tag=KB.Attack,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.ReachAdd1,tag=KB.HitBox,tag=KB.BossCheck] remove KB.ReachAdd1

tag @e[distance=..16,tag=KB.HitBox,tag=KB.Body,tag=KB.BossCheck] add KB.Attack
tag @e[distance=..16,tag=KB.HitBox,tag=KB.Tail,tag=!KB.Hummer,tag=KB.BossCheck] add KB.Attack
tag @e[distance=..16,tag=KB.HitBox,tag=KB.Neck,tag=KB.BossCheck] add KB.Attack

execute as @e[distance=..16,tag=KB.Attack,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute as @e[distance=..16,tag=!KB.Attack,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

playsound minecraft:entity.polar_bear.hurt hostile @a ~ ~ ~ 2 0.4

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0
