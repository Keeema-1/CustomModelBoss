
tag @s remove KB.CanActionChange

playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 0

execute as @e[distance=..16,tag=KB.FrontRightLeg2,tag=KB.BossCheck,limit=1] at @s unless score @s kb.rx matches 0 run function kboss:system/each_boss/mantis/action/common/knock
execute as @e[distance=..16,tag=KB.FrontLeftLeg2,tag=KB.BossCheck,limit=1] at @s unless score @s kb.rx matches 0 run function kboss:system/each_boss/mantis/action/common/knock
execute as @e[distance=..16,tag=KB.BackRightLeg2,tag=KB.BossCheck,limit=1] at @s unless score @s kb.rx matches 0 run function kboss:system/each_boss/mantis/action/common/knock
execute as @e[distance=..16,tag=KB.BackLeftLeg2,tag=KB.BossCheck,limit=1] at @s unless score @s kb.rx matches 0 run function kboss:system/each_boss/mantis/action/common/knock

function kboss:system/each_boss/mantis/action_change/0
