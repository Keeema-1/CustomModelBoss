
tag @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack
tag @e[distance=..16,tag=KB.HitBox,tag=!KB.Hummer,tag=KB.BossCheck] add KB.Attack
execute as @e[distance=..16,tag=KB.Attack,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:0b,Invulnerable:1b}
