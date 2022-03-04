
# プレイヤーを向く

data merge storage kboss {check:0b}

execute positioned ^ ^ ^0.1 facing entity @p feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=0.1999..0.21] run data merge storage kboss {check:2b}
execute if data storage kboss {check:0b} positioned ^-0.1 ^ ^ facing entity @p feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=..0.1414] run data merge storage kboss {check:1b}

execute if data storage kboss {check:0b} run tp @s ~ ~ ~ ~2 ~
execute if data storage kboss {check:1b} run tp @s ~ ~ ~ ~-2 ~

execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action_change/table/normal
