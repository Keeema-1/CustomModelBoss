
# 近い
execute if entity @a[distance=..8] run function kboss:system/each_boss/matsuri/action_change/table/near/main

# 遠い
execute unless entity @a[distance=..8] run function kboss:system/each_boss/matsuri/action_change/table/far/main

# 疲労
#execute if entity @s[tag=KB.Tired] run function kboss:system/each_boss/matsuri/action_change/13
