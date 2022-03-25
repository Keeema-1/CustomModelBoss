
# 咆哮

function kboss:system/boss/each/martellos/pose/bark/1

scoreboard players set @s kb.action 3
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 80

tag @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.HitBox,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

#execute if entity @s[tag=!KB.Noticed] as @a[tag=KB.SameArea] at @s run function map:system/each_player/music/5/set
#execute if entity @s[tag=!KB.Noticed] run function kboss:system/boss/each/common/bossbar/main

execute if score @s kb.id matches 1 run bossbar set kboss:health/1 players @a
execute if score @s kb.id matches 1 run bossbar set kboss:health/1 visible true
execute if score @s kb.id matches 2 run bossbar set kboss:health/2 players @a
execute if score @s kb.id matches 2 run bossbar set kboss:health/2 visible true
execute if score @s kb.id matches 3 run bossbar set kboss:health/3 players @a
execute if score @s kb.id matches 3 run bossbar set kboss:health/3 visible true

tag @s add KB.Noticed
