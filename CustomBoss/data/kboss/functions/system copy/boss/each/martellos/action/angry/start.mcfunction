
tag @s add KB.Angry
tag @s remove KB.WillAngry

function kboss:system/boss/each/martellos/action/each/3/start

scoreboard players set @s kb.angry_time 600
execute if predicate kboss:random/500m run scoreboard players add @s kb.angry_time 100
execute if predicate kboss:random/500m run scoreboard players add @s kb.angry_time 200
