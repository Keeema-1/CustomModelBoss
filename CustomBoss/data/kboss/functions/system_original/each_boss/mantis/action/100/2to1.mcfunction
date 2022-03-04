
function kboss:system/each_boss/mantis/pose/normal/1

scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.anime_time 100

execute positioned as @e[distance=..16,tag=KB.Sharp,tag=KB.Skin,tag=KB.BossCheck] run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 1 20

#playsound minecraft:item.axe.wax_off hostile @a ~ ~ ~ 2 1.5
#playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.2
playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 2
