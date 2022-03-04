
execute if entity @s[tag=KB.Head] at @e[tag=KB.Head,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^0.3
execute if entity @s[tag=KB.Neck] at @e[tag=KB.Neck1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^1.2 ^0.3

execute if entity @s[tag=KB.Body1] at @e[tag=KB.Body1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.8 ^0.4
execute if entity @s[tag=KB.Body2] at @e[tag=KB.Body2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^1.1 ^-0.5

execute if entity @s[tag=KB.RightArm1] at @e[tag=KB.RightArm1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^0.3 ^0.5 ^
execute if entity @s[tag=KB.RightArm2] at @e[tag=KB.RightArm2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^

execute if entity @s[tag=KB.LeftArm1] at @e[tag=KB.LeftArm1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^-0.3 ^0.5 ^
execute if entity @s[tag=KB.LeftArm2] at @e[tag=KB.LeftArm2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^

execute if entity @s[tag=KB.RightLeg1] at @e[tag=KB.RightLeg1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^0.1 ^0.9 ^0.1
execute if entity @s[tag=KB.RightLeg2] at @e[tag=KB.RightLeg2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^1.2 ^0.2

execute if entity @s[tag=KB.LeftLeg1] at @e[tag=KB.LeftLeg1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^-0.1 ^0.9 ^0.1
execute if entity @s[tag=KB.LeftLeg2] at @e[tag=KB.LeftLeg2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^1.2 ^0.2

execute if entity @s[tag=KB.Tail1] at @e[tag=KB.Tail1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.9 ^-1
execute if entity @s[tag=KB.Tail2] at @e[tag=KB.Tail2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.9 ^-1
execute if entity @s[tag=KB.Tail3] at @e[tag=KB.Tail3,tag=KB.Skin,tag=KB.BossCheck,limit=1] run tp ^ ^0.9 ^-0.1

execute if entity @s[tag=KB.ReachAdd1] at @s if entity @a[distance=..4] facing entity @p eyes positioned ^ ^ ^1 run tp ~ ~-1 ~
execute if entity @s[tag=KB.Attack1,tag=!KB.ReachAdd1] at @s if entity @a[distance=..4] positioned ^ ^ ^ run tp ~ ~-1 ~

data merge storage kboss:temp {check:0b}

execute if entity @s[tag=!KB.Attack] at @s if block ~ ~ ~ #kboss:space if block ~-1 ~ ~-1 #kboss:space if block ~-1 ~ ~1 #kboss:space if block ~1 ~ ~-1 #kboss:space if block ~1 ~ ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s run tp ~ ~0.3 ~
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s if block ~ ~ ~ #kboss:space if block ~-1 ~ ~-1 #kboss:space if block ~-1 ~ ~1 #kboss:space if block ~1 ~ ~-1 #kboss:space if block ~1 ~ ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s run tp ~ ~0.3 ~
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s if block ~ ~ ~ #kboss:space if block ~-1 ~ ~-1 #kboss:space if block ~-1 ~ ~1 #kboss:space if block ~1 ~ ~-1 #kboss:space if block ~1 ~ ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s run tp ~ ~0.3 ~
