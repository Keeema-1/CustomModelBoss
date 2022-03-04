
function kboss:system/each_boss/mantis/pose/turn/right/6

scoreboard players set @s kb.action_sub 6

scoreboard players set @s kb.anime_time 5

#playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.5 0.5
playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 0

execute positioned as @e[distance=..16,tag=KB.FrontRightLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock
execute positioned as @e[distance=..16,tag=KB.BackLeftLeg2,tag=KB.BossCheck,limit=1] run function kboss:system/each_boss/mantis/action/common/knock

# プレイヤーを向いたとき
execute at @s run function kboss:system/each_boss/mantis/action/common/player_direction/is_leftside
execute if score @s kb.action_time matches 1.. if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/each_boss/mantis/action/102/finish

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/mantis/action/102/finish
