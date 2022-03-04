
execute if predicate kboss:random/50m run tag @s add KB.WillBark

# 近い
execute if entity @s[tag=!KB.WillBark] if entity @a[distance=..6] run function kboss:system/each_boss/squirrel/action_change/table/near/main

# 遠い
execute if entity @s[tag=!KB.WillBark] unless entity @a[distance=..6] run function kboss:system/each_boss/squirrel/action_change/table/far/main

# 咆哮
execute if entity @s[tag=KB.WillBark,tag=!KB.Tired] run function kboss:system/each_boss/squirrel/action_change/11

# 疲労
execute if entity @s[tag=KB.Tired] run function kboss:system/each_boss/squirrel/action_change/13
