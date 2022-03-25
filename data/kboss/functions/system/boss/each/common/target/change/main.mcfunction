
scoreboard players set $random kb.temp 0
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 1
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 2

execute if score $random kb.temp matches 0 run tag @p add KB.MainTarget
execute if score $random kb.temp matches 1 if entity @a[distance=..16,tag=KB.Target] run tag @a[distance=..16,tag=KB.Target,sort=random,limit=1] add KB.MainTarget
execute if score $random kb.temp matches 1 unless entity @a[distance=..16,tag=KB.Target] run scoreboard players set $random kb.temp 2
execute if score $random kb.temp matches 2 if entity @a[distance=..32,tag=KB.Target] run tag @a[distance=..32,tag=KB.Target,sort=random,limit=1] add KB.MainTarget
execute if score $random kb.temp matches 2 unless entity @a[distance=..32,tag=KB.Target] run scoreboard players set $random kb.temp 3
execute if score $random kb.temp matches 3 if entity @a[distance=..64,tag=KB.Target] run tag @a[distance=..64,tag=KB.Target,sort=random,limit=1] add KB.MainTarget
execute if score $random kb.temp matches 3 unless entity @a[distance=..64,tag=KB.Target] run tag @p[tag=KB.Target] add KB.MainTarget

scoreboard players reset $random
