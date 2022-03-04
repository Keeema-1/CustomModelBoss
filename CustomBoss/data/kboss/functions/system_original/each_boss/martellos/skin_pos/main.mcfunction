
execute as @e[distance=..16,tag=KB.Body2,tag=KB.SkinPos,tag=KB.BossCheck] run function kboss:system/each_boss/martellos/skin_pos/sub/body2
execute as @e[distance=..16,tag=KB.Body1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body2,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/body1

execute as @e[distance=..16,tag=KB.Neck1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/neck1

execute as @e[distance=..16,tag=KB.Head,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Neck1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/head

execute as @e[distance=..16,tag=KB.Jaw,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Head,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/jaw

execute as @e[distance=..16,tag=KB.LeftArm1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/left_arm1
execute as @e[distance=..16,tag=KB.LeftArm2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.LeftArm1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/left_arm2

execute as @e[distance=..16,tag=KB.RightArm1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/right_arm1
execute as @e[distance=..16,tag=KB.RightArm2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.RightArm1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/right_arm2

execute as @e[distance=..16,tag=KB.RightLeg1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body2,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/right_leg1
execute as @e[distance=..16,tag=KB.RightLeg2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.RightLeg1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/right_leg2

execute as @e[distance=..16,tag=KB.LeftLeg1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body2,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/left_leg1
execute as @e[distance=..16,tag=KB.LeftLeg2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.LeftLeg1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/left_leg2

execute as @e[distance=..16,tag=KB.Tail1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body2,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/tail1
execute as @e[distance=..16,tag=KB.Tail2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Tail1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/tail2
execute as @e[distance=..16,tag=KB.Tail3,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Tail2,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/martellos/skin_pos/sub/tail3
