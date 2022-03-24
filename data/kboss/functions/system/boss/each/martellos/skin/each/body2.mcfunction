
execute if entity @s[tag=KB.Normal] run tp @s ^ ^0.3 ^

execute as @e[distance=..16,tag=KB.Main,tag=KB.BossCheck,limit=1] run function kboss:system/boss/each/common/skin/parent

function kboss:system/boss/each/common/skin/update
