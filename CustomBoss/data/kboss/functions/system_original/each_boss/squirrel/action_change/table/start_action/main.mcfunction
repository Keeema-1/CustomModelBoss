
# 近い
execute if entity @a[distance=..12] run function kboss:system/each_boss/matsuri/action_change/table/start_action/near/main

# 遠い
execute unless entity @a[distance=..12] run function kboss:system/each_boss/matsuri/action_change/table/start_action/far/main
