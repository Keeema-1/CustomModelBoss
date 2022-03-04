
# 咆哮

function kboss:system/each_boss/matsuri/pose/bark/1

scoreboard players set @s kb.action 3
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 80

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

execute if entity @s[tag=!KB.Noticed] as @a[tag=KB.SameArea] at @s run function map:system/each_player/music/6/set
execute if entity @s[tag=!KB.Noticed] run function kboss:system/each_boss/common/bossbar/main

tag @s add KB.Noticed
