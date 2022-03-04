
# 死亡

function kboss:system/each_boss/matsuri/pose/die/1

scoreboard players set @s kb.action 99
scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.action_time 100

playsound minecraft:item.totem.use master @a ~ ~ ~ 2 0
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 1
