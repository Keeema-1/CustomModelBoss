
execute if score @s kb.anime_time matches 1.. run scoreboard players remove @s kb.anime_time 1
execute if score @s kb.action_time matches 1.. run scoreboard players remove @s kb.action_time 1

# 怒り
function kboss:system/boss/each/martellos/action/angry/main

execute if score @s kb.action matches 0..10 run function kboss:system/boss/each/martellos/action/sub0
execute if score @s kb.action matches 1..30 run function kboss:system/boss/each/martellos/action/sub1
execute if score @s kb.action matches 99.. run function kboss:system/boss/each/martellos/action/sub2
