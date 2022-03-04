
data merge storage kboss:temp {check:1b}

execute as @e[distance=..16,tag=KB.Size1,tag=KB.AI,tag=KB.BossCheck] if data storage kboss:temp {check:1b} run function kboss:system/each_boss/platypus/action/common/barrier/sub1

execute if data storage kboss:temp {check:1b} as @e[distance=..16,tag=KB.Size2,tag=KB.AI,tag=KB.BossCheck] if data storage kboss:temp {check:1b} run function kboss:system/each_boss/platypus/action/common/barrier/sub2


execute if data storage kboss:temp {check:0b} if score @s island matches 2 if score @s area matches 1 at @s facing -35.0 ~ -290.0 rotated ~ 0 positioned ^ ^ ^0.5 rotated as @s run tp ~ ~ ~
