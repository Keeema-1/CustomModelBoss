
execute in the_nether run tp @e[tag=MovieCamera] 0 60 0
execute as @e[tag=MovieCamera] run tp @s -1332 78 1186 120 30

function kboss:system/each_boss/platypus/pose/look_around/right/1

scoreboard players set @s kb.action_sub 3

scoreboard players set @s kb.anime_time 220
