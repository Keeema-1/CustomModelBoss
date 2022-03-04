
# 咆哮

function kboss:system/each_boss/squirrel/pose/bark/1

function kboss:system/each_boss/squirrel/model/mouth/large_open

scoreboard players set @s kb.action 11
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 160

tag @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] remove KB.Attack
execute as @e[distance=..16,tag=KB.AI,tag=KB.BossCheck] run data merge entity @s {NoAI:1b,Invulnerable:0b}

tag @s remove KB.WillBark

execute if entity @s[tag=!KB.Noticed] as @a[tag=KB.SameArea] unless score @s music_id matches 3 at @s run function map:system/each_player/music/3/set
execute if entity @s[tag=!KB.Noticed] run function kboss:system/each_boss/common/bossbar/main

tag @s add KB.Noticed
