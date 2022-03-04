
#execute if predicate kboss:random/50m run tag @s add KB.WillBark

# 近い
#execute if entity @s[tag=!KB.WillBark] if entity @a[distance=..8] run function kboss:system/each_boss/martellos/action_change/table/near/main
execute if entity @a[distance=..8] run function kboss:system/each_boss/martellos/action_change/table/near/main
#execute if entity @s[tag=!KB.WillBark] if entity @a[distance=1..2] if predicate map:random/500m run function kboss:system/each_boss/martellos/action_change/8
#execute if entity @s[tag=!KB.WillBark] if entity @a[distance=..1] run function kboss:system/each_boss/martellos/action_change/8

# 遠い
#execute if entity @s[tag=!KB.WillBark] unless entity @a[distance=..8] run function kboss:system/each_boss/martellos/action_change/table/far/main
execute unless entity @a[distance=..8] run function kboss:system/each_boss/martellos/action_change/table/far/main

# 咆哮
#execute if entity @s[tag=KB.WillBark,tag=!KB.Tired] run function kboss:system/each_boss/martellos/action_change/4

# 疲労
#execute if entity @s[tag=KB.Tired] run function kboss:system/each_boss/martellos/action_change/13
