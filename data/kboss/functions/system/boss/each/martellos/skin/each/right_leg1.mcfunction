
execute if entity @s[tag=KB.Normal] run tp @s ^-1.1 ^0.2 ^

execute as @e[distance=..16,tag=KB.Body2,tag=KB.Skin,tag=KB.BossCheck,limit=1] run function kboss:system/boss/each/common/skin/parent

function kboss:system/boss/each/common/skin/update
