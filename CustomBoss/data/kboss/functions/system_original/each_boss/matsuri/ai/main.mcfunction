
execute if entity @s[tag=KB.Head] at @e[tag=KB.Head,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^


execute if entity @s[tag=KB.Body1] at @e[tag=KB.Body1,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^1 ^-0.5
execute if entity @s[tag=KB.Body2] at @e[tag=KB.Body3,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^0.5 ^

execute if entity @s[tag=KB.RightArm2] at @e[tag=KB.RightArm2,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^ ^
execute if entity @s[tag=KB.RightArm1] at @e[tag=KB.RightArm1,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^0.5 ^

execute if entity @s[tag=KB.LeftArm2] at @e[tag=KB.LeftArm2,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^ ^
execute if entity @s[tag=KB.LeftArm1] at @e[tag=KB.LeftArm1,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^0.5 ^

execute if entity @s[tag=KB.RightLeg1] at @e[tag=KB.RightLeg1,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^-0.5 ^-0.5

execute if entity @s[tag=KB.LeftLeg1] at @e[tag=KB.LeftLeg1,tag=KB.SkinPos,tag=KB.BossCheck,limit=1] run tp ^ ^-0.5 ^-0.5

execute if entity @s[tag=KB.ReachAdd1] at @s if entity @a[distance=..4] facing entity @p eyes positioned ^ ^ ^1 run tp ~ ~-1 ~
execute if entity @s[tag=KB.Attack,tag=!KB.ReachAdd1] at @s if entity @a[distance=..4] positioned ^ ^ ^ run tp ~ ~-1 ~

data merge storage kboss:temp {check:0b}

execute if entity @s[tag=!KB.Attack] at @s if block ~ ~ ~ #kboss:space if block ~-1 ~ ~-1 #kboss:space if block ~-1 ~ ~1 #kboss:space if block ~1 ~ ~-1 #kboss:space if block ~1 ~ ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s run tp ~ ~0.3 ~
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s if block ~ ~ ~ #kboss:space if block ~-1 ~ ~-1 #kboss:space if block ~-1 ~ ~1 #kboss:space if block ~1 ~ ~-1 #kboss:space if block ~1 ~ ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s run tp ~ ~0.3 ~
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s if block ~ ~ ~ #kboss:space if block ~-1 ~ ~-1 #kboss:space if block ~-1 ~ ~1 #kboss:space if block ~1 ~ ~-1 #kboss:space if block ~1 ~ ~1 #kboss:space run data merge storage kboss:temp {check:1b}
execute if entity @s[tag=!KB.Attack] if data storage kboss:temp {check:0b} at @s run tp ~ ~0.3 ~
