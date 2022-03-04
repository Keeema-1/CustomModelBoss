
# 親エンティティと同じidの子エンティティにタグ付け
scoreboard players operation $system kb.temp = @s kb.id
execute as @e[distance=..16,tag=KB.Boss,tag=!KB.AlreadyProcessed] if score @s kb.id = $system kb.temp run tag @s add KB.BossCheck


scoreboard players operation $system island = @s island
scoreboard players operation $system area = @s area

execute as @a[tag=InField] if score @s island = $system island if score @s area = $system area run tag @s add KB.SameArea

execute if entity @a[tag=KB.SameArea] if entity @s[tag=!KB.Dead] run function kboss:system/each_boss/common/sub
execute if entity @a[tag=KB.SameArea] if entity @s[tag=KB.Dead] run function kboss:system/each_boss/common/dead/main

# ムービー用
execute if entity @a[tag=!KB.SameArea] if entity @s[tag=PlayingMovie] run function kboss:system/each_boss/common/sub

# 開発用
#execute unless entity @a[tag=KB.SameArea] if entity @s[tag=!KB.Dead] run function kboss:system/each_boss/common/sub
#execute unless entity @a[tag=KB.SameArea] if entity @s[tag=KB.Dead] run function kboss:system/each_boss/common/dead/main

tag @a remove KB.SameArea

tag @e[distance=..16,tag=KB.BossCheck] add KB.AlreadyProcessed
tag @e[distance=..16,tag=KB.BossCheck] remove KB.BossCheck
tag @e[tag=KB.Target] remove KB.Target
