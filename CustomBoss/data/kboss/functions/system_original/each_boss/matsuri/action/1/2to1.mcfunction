
function kboss:system/each_boss/matsuri/pose/run/1

scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.anime_time 7

execute if entity @a[distance=..8] run function kboss:system/each_boss/matsuri/action/15/finish

