
# ムービー

execute in the_nether run tp @e[tag=MovieCamera] 0 60 0
tp @e[tag=MovieCamera] -1295 80 1210 -135 30

tp @e[tag=KB.BossCheck] -1362 87 1182 -60 0

function kboss:system/each_boss/platypus/action/101/kid

function kboss:system/each_boss/platypus/pose/jump/left/3

scoreboard players set @s kb.action 101
scoreboard players set @s kb.action_sub 0

scoreboard players set @s kb.action_time 1000
scoreboard players set @s kb.anime_time 120
