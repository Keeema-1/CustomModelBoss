
execute as @e[distance=..16,tag=KB.Body,tag=KB.SkinPos,tag=KB.BossCheck] run function kboss:system/each_boss/mantis/skin_pos/sub/body

execute as @e[distance=..16,tag=KB.Neck,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/neck

execute as @e[distance=..16,tag=KB.Head,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Neck,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/head

execute as @e[distance=..16,tag=KB.LeftJaw,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Head,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/left_jaw
execute as @e[distance=..16,tag=KB.RightJaw,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Head,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/right_jaw

execute as @e[distance=..16,tag=KB.LeftArm1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/left_arm1
execute as @e[distance=..16,tag=KB.LeftArm2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.LeftArm1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/left_arm2
execute as @e[distance=..16,tag=KB.LeftArm3,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.LeftArm2,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/left_arm3
execute as @e[distance=..16,tag=KB.LeftArm4,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.LeftArm3,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/left_arm4

execute as @e[distance=..16,tag=KB.RightArm1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/right_arm1
execute as @e[distance=..16,tag=KB.RightArm2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.RightArm1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/right_arm2
execute as @e[distance=..16,tag=KB.RightArm3,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.RightArm2,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/right_arm3
execute as @e[distance=..16,tag=KB.RightArm4,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.RightArm3,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/right_arm4

execute as @e[distance=..16,tag=KB.FrontRightLeg1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/front_right_leg1
execute as @e[distance=..16,tag=KB.FrontRightLeg2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.FrontRightLeg1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/front_right_leg2

execute as @e[distance=..16,tag=KB.FrontLeftLeg1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/front_left_leg1
execute as @e[distance=..16,tag=KB.FrontLeftLeg2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.FrontLeftLeg1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/front_left_leg2

execute as @e[distance=..16,tag=KB.BackRightLeg1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/back_right_leg1
execute as @e[distance=..16,tag=KB.BackRightLeg2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.BackRightLeg1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/back_right_leg2

execute as @e[distance=..16,tag=KB.BackLeftLeg1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/back_left_leg1
execute as @e[distance=..16,tag=KB.BackLeftLeg2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.BackLeftLeg1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/back_left_leg2

execute as @e[distance=..16,tag=KB.Tail1,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Body,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/tail1
execute as @e[distance=..16,tag=KB.Tail2,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Tail1,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/tail2
execute as @e[distance=..16,tag=KB.LeftTail,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Tail2,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/left_tail
execute as @e[distance=..16,tag=KB.RightTail,tag=KB.SkinPos,tag=KB.BossCheck] at @e[distance=..16,tag=KB.BossCheck,tag=KB.Tail2,tag=KB.SkinPos,limit=1] run function kboss:system/each_boss/mantis/skin_pos/sub/right_tail
