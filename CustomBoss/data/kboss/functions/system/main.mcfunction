
execute as @e[tag=KB.Main] at @s run function kboss:system/boss/general/main

execute as @e[tag=KB.Child] at @s run function kboss:system/child/main
kill @e[tag=KB.Child,tag=!KB.AlreadyProcessed]

# ↓ロード関係で不具合が発生するため
#kill @e[tag=KB.Boss,tag=!KB.AlreadyProcessed]
tag @e[tag=KB.AlreadyProcessed] remove KB.AlreadyProcessed

# 小文字に統一?
data remove storage kboss:temp Space
data remove storage kboss:temp space
data remove storage kboss:temp Check
data remove storage kboss:temp check

execute if data storage kboss:test {glow_when_attack:1b} as @e[tag=KB.AI] run function kboss:system/glow_when_attack
execute if data storage kboss:test {always_glow:1b} as @e[tag=KB.AI] run data merge entity @s {Glowing:1b}
