
data merge storage kboss:temp {check:1b}

# test: 自身
#execute at @s run function kboss:system/each_boss/mantis/action/common/barrier/sub1

execute as @e[distance=..16,tag=KB.Size1,tag=KB.AI,tag=KB.BossCheck] run function kboss:system/each_boss/mantis/action/common/barrier/sub1

execute if data storage kboss:temp {check:1b} as @e[distance=..16,tag=KB.Size2,tag=KB.AI,tag=KB.BossCheck] run function kboss:system/each_boss/mantis/action/common/barrier/sub2

execute if data storage kboss:temp {check:1b} as @e[distance=..16,tag=KB.Size3,tag=KB.AI,tag=KB.BossCheck] run function kboss:system/each_boss/mantis/action/common/barrier/sub3


execute if data storage kboss:temp {check:0b} if score @s island matches 2 if score @s area matches 1 at @s facing -35.0 ~ -290.0 rotated ~ 0 positioned ^ ^ ^1 rotated as @s run tp ~ ~ ~

execute if data storage kboss:temp {check:0b} at @s facing -35.0 ~ -290.0 rotated ~ 0 positioned ^ ^ ^1 rotated as @s run tp ~ ~ ~
