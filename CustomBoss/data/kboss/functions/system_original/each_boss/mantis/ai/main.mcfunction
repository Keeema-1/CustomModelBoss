
execute if entity @s[tag=KB.Head] at @e[tag=KB.Head,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^


execute if entity @s[tag=KB.Body1] at @e[tag=KB.Body,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^0.5
execute if entity @s[tag=KB.Body2] at @e[tag=KB.Body,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^0.75 ^-1.35

execute if entity @s[tag=KB.RightArm1] at @e[tag=KB.RightArm3,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^-0.25
execute if entity @s[tag=KB.RightArm2] at @e[tag=KB.RightArm3,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^1.5
execute if entity @s[tag=KB.RightArm3] at @e[tag=KB.RightArm3,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^3.25
execute if entity @s[tag=KB.RightArm4] at @e[tag=KB.RightArm3,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^5

execute if entity @s[tag=KB.LeftArm1] at @e[tag=KB.LeftArm3,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^-0.25
execute if entity @s[tag=KB.LeftArm2] at @e[tag=KB.LeftArm3,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^1.5
execute if entity @s[tag=KB.LeftArm3] at @e[tag=KB.LeftArm3,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^3.25
execute if entity @s[tag=KB.LeftArm4] at @e[tag=KB.LeftArm3,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^5

execute if entity @s[tag=KB.FrontRightLeg1] at @e[tag=KB.FrontRightLeg2,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^-0.25 ^
execute if entity @s[tag=KB.BackRightLeg1] at @e[tag=KB.BackRightLeg2,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^-0.25 ^

execute if entity @s[tag=KB.FrontLeftLeg1] at @e[tag=KB.FrontLeftLeg2,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^-0.25 ^
execute if entity @s[tag=KB.BackLeftLeg1] at @e[tag=KB.BackLeftLeg2,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^-0.25 ^

execute if entity @s[tag=KB.Tail1] at @e[tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.9 ^-1
execute if entity @s[tag=KB.Tail2] at @e[tag=KB.Tail2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.9 ^-1
execute if entity @s[tag=KB.Tail3] at @e[tag=KB.Tail3,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.9 ^-0.1

execute if entity @s[tag=KB.ReachAdd1] at @s if entity @a[distance=..4] facing entity @p eyes positioned ^ ^ ^1 run tp ~ ~-1 ~
execute if entity @s[tag=KB.Attack,tag=!KB.ReachAdd1] at @s if entity @a[distance=..4] positioned ^ ^ ^ run tp ~ ~-1 ~

data merge storage kboss:temp {check:0b}

execute if entity @s[tag=!KB.Attack] at @s if block ~ ~ ~ #kboss:space if block ~-1 ~ ~-1 #kboss:space if block ~-1 ~ ~1 #kboss:space if block ~1 ~ ~-1 #kboss:space if block ~1 ~ ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s run tp ~ ~0.3 ~
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s if block ~ ~ ~ #kboss:space if block ~-1 ~ ~-1 #kboss:space if block ~-1 ~ ~1 #kboss:space if block ~1 ~ ~-1 #kboss:space if block ~1 ~ ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s run tp ~ ~0.3 ~
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s if block ~ ~ ~ #kboss:space if block ~-1 ~ ~-1 #kboss:space if block ~-1 ~ ~1 #kboss:space if block ~1 ~ ~-1 #kboss:space if block ~1 ~ ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s run tp ~ ~0.3 ~
