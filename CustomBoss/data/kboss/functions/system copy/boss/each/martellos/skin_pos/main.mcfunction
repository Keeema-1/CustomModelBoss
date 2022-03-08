
execute as @e[distance=..16,tag=KB.Body2,tag=KB.SkinPos,tag=KB.BossCheck] run function kboss:system/boss/each/martellos/skin_pos/each/body2
execute as @e[distance=..16,tag=KB.Body1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body2,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/body1

execute as @e[distance=..16,tag=KB.Neck1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body1,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/neck1

execute as @e[distance=..16,tag=KB.Head,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Neck1,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/head

execute as @e[distance=..16,tag=KB.Jaw,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Head,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/jaw

execute as @e[distance=..16,tag=KB.LeftArm1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body1,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/left_arm1
execute as @e[distance=..16,tag=KB.LeftArm2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.LeftArm1,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/left_arm2

execute as @e[distance=..16,tag=KB.RightArm1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body1,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/right_arm1
execute as @e[distance=..16,tag=KB.RightArm2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.RightArm1,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/right_arm2

execute as @e[distance=..16,tag=KB.RightLeg1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body2,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/right_leg1
execute as @e[distance=..16,tag=KB.RightLeg2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.RightLeg1,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/right_leg2

execute as @e[distance=..16,tag=KB.LeftLeg1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body2,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/left_leg1
execute as @e[distance=..16,tag=KB.LeftLeg2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.LeftLeg1,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/left_leg2

execute as @e[distance=..16,tag=KB.Tail1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body2,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/tail1
execute as @e[distance=..16,tag=KB.Tail2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Tail1,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/tail2
execute as @e[distance=..16,tag=KB.Tail3,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Tail2,tag=KB.SkinPos,limit=1] run function kboss:system/boss/each/martellos/skin_pos/each/tail3
