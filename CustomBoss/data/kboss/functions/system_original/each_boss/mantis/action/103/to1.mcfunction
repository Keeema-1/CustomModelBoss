
function kboss:system/each_boss/mantis/pose/walk/1

scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.anime_time 4

playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 2 0

execute positioned as @e[distance=..16,tag=KB.FrontLeftLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock
execute positioned as @e[distance=..16,tag=KB.BackRightLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock

tp ~ ~0.1 ~
