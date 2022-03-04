
scoreboard players remove @s kb.action_time 1

execute if score @s kb.action matches 0 if score @s kb.action_time matches ..0 run kill @s

execute if score @s kb.action matches 1 if score @s kb.action_time matches ..0 run function kboss:system/child/firework/blast
