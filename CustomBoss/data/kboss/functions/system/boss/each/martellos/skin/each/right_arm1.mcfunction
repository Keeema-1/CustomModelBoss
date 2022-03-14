
execute if entity @s[tag=KB.Normal] run tp @s ^-0.9 ^0.4 ^1

execute as @e[distance=..16,tag=KB.Body1,tag=KB.Skin,tag=KB.BossCheck,limit=1] run function kboss:system/boss/each/common/skin/parent

function kboss:system/boss/each/common/skin/update
