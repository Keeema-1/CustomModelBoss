
execute if entity @s[tag=KB.Head] at @e[distance=..16,tag=KB.Head,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^-0.1


execute if entity @s[tag=KB.Body1] at @e[distance=..16,tag=KB.Body1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.5 ^0.6
execute if entity @s[tag=KB.Body2] at @e[distance=..16,tag=KB.Body2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^ ^

execute if entity @s[tag=KB.RightArm2] at @e[distance=..16,tag=KB.RightArm2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^ ^
execute if entity @s[tag=KB.RightArm1] at @e[distance=..16,tag=KB.RightArm1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.5 ^

execute if entity @s[tag=KB.LeftArm2] at @e[distance=..16,tag=KB.LeftArm2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^ ^
execute if entity @s[tag=KB.LeftArm1] at @e[distance=..16,tag=KB.LeftArm1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.5 ^

execute if entity @s[tag=KB.RightLeg1] at @e[distance=..16,tag=KB.RightLeg1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^-0.5 ^-0.5

execute if entity @s[tag=KB.LeftLeg1] at @e[distance=..16,tag=KB.LeftLeg1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^-0.5 ^-0.5

execute if entity @s[tag=KB.Tail] at @e[distance=..16,tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.3 ^-1.3

#execute if entity @s[tag=KB.Attack,tag=KB.Head] at @s if entity @a[distance=2.5..4] facing entity @p eyes positioned ^ ^ ^1 run tp ~ ~-1 ~
#execute if entity @s[tag=KB.Attack,tag=!KB.Head] at @s if entity @a[distance=2.5..4] facing entity @p eyes positioned ^ ^ ^1 run tp ~ ~-1 ~
execute if entity @s[tag=KB.Attack] at @s if entity @a[distance=2.5..4] facing entity @p eyes positioned ^ ^ ^1 run tp ~ ~-1 ~
