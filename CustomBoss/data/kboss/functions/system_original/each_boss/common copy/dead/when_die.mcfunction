
#tag @e[tag=KB.BossCheck] add KB.Dead

execute if score @s kb.id matches 1 run bossbar set kboss:health/1 visible false
execute if score @s kb.id matches 2 run bossbar set kboss:health/2 visible false
execute if score @s kb.id matches 3 run bossbar set kboss:health/3 visible false

tag @s add KB.Dead

execute as @e[tag=KB.BossCheck,tag=KB.AI] run data merge entity @s {Size:0}
kill @e[tag=KB.BossCheck,tag=KB.AI]

execute if entity @s[tag=KB.Matsuri] run function kboss:system/each_boss/matsuri/action_change/99
execute if entity @s[tag=KB.BigSquirrel] run function kboss:system/each_boss/squirrel/action_change/99
execute if entity @s[tag=KB.Platypus] run function kboss:system/each_boss/platypus/action_change/99
execute if entity @s[tag=KB.Martellos] run function kboss:system/each_boss/martellos/action_change/99
execute if entity @s[tag=!KB.Matsuri,tag=!KB.BigSquirrel,tag=!KB.Platypus,tag=!KB.Martellos] run kill @e[tag=KB.BossCheck]
