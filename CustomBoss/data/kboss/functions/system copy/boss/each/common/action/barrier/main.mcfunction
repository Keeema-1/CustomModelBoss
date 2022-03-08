
data merge storage kboss:temp {check:1b}

execute as @e[distance=..16,tag=KB.Size1,tag=KB.HitBox,tag=KB.BossCheck] run execute if data storage kboss:temp {check:1b} run function kboss:system/each_boss/martellos/action/common/barrier/sub1

execute if data storage kboss:temp {check:1b} as @e[distance=..16,tag=KB.Size2,tag=KB.HitBox,tag=KB.BossCheck] run execute if data storage kboss:temp {check:1b} run function kboss:system/each_boss/martellos/action/common/barrier/sub2

execute if data storage kboss:temp {check:1b} as @e[distance=..16,tag=KB.Size3,tag=KB.HitBox,tag=KB.BossCheck] run execute if data storage kboss:temp {check:1b} run function kboss:system/each_boss/martellos/action/common/barrier/sub3

execute if data storage kboss:temp {check:0b} if score @s island matches 1 if score @s area matches 1 facing -1535 71 1405 positioned ^ ^ ^0.5 run tp ~ ~ ~
execute if data storage kboss:temp {check:0b} if score @s island matches 1 if score @s area matches 8 facing -1315 74 1199 positioned ^ ^ ^0.5 run tp ~ ~ ~

execute if data storage kboss:temp {check:0b} if score @s island matches 2 if score @s area matches 1 at @s facing -35.0 ~ -290.0 rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s run tp ~ ~ ~
