
function kboss:system/each_boss/mantis/pose/run/1

scoreboard players set @s kb.action_sub 1

scoreboard players set @s kb.anime_time 2

playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 2 0

execute positioned as @e[distance=..16,tag=KB.FrontLeftLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock
execute positioned as @e[distance=..16,tag=KB.BackRightLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock

execute at @s run function kboss:system/each_boss/mantis/action/common/player_direction/is_frontside
execute if data storage kboss:temp {direction:{frontside:0b}} unless entity @a[distance=..6] run function kboss:system/each_boss/mantis/action/10/to7


tp ~ ~0.1 ~
