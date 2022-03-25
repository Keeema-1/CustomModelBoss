
# 各ボス
execute as @e[type=minecraft:marker,tag=KB.Main,tag=KB.Boss] at @s run function kboss:system/boss/general/main

# ボスの出した弾等
execute as @e[tag=KB.Bullet,tag=KB.Main] at @s run function kboss:system/bullet/main
kill @e[tag=KB.Bullet,tag=!KB.AlreadyProcessed]

kill @e[tag=KB.Boss,tag=!KB.AlreadyProcessed]
tag @e[tag=KB.AlreadyProcessed] remove KB.AlreadyProcessed

data remove storage kboss:temp space
data remove storage kboss:temp direction
data remove storage kboss:temp check

execute if data storage kboss:test {glow_when_attack:1b} as @e[tag=KB.HitBox] run function kboss:system/glow_when_attack
execute if data storage kboss:test {always_glow:1b} as @e[tag=KB.HitBox] run effect give @s minecraft:glowing 1 1 true
