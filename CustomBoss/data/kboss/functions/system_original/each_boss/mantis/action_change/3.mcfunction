
# 咆哮

function kboss:system/each_boss/mantis/pose/bark/1

scoreboard players set @s kb.action 3
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 80

execute if entity @s[tag=!KB.Noticed] as @a[tag=KB.SameArea] at @s run function map:system/each_player/music/7/set
execute if entity @s[tag=!KB.Noticed] run function kboss:system/each_boss/common/bossbar/main

tag @s add KB.Noticed
