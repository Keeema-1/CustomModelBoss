
function kboss:system/each_boss/mantis/pose/walk/4

scoreboard players set @s kb.action_sub -4

scoreboard players set @s kb.anime_time 4

playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 2 0

execute positioned as @e[distance=..16,tag=KB.FrontRightLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock
execute positioned as @e[distance=..16,tag=KB.BackLeftLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock

#tp ~ ~-0.1 ~
tp ~ ~0.1 ~
