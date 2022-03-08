
# その場でノーマルアニメーション

function kboss:system/boss/each/martellos/pose/normal/1

scoreboard players set @s kb.action 100
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time -1
scoreboard players set @s kb.anime_time 40

execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

tag @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack
