
tag @s remove KB.Angry
tag @s remove KB.WillTired

function kboss:system/boss/each/martellos/action/each/25/start

scoreboard players set @s kb.angry_time 1200

scoreboard players operation @s kb.last_angry_health = @s kb.health
