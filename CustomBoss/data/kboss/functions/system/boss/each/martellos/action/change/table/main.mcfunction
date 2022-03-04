
# 近い
execute if entity @a[distance=..8] run function kboss:system/boss/each/martellos/action/change/table/near/main

# 遠い
execute unless entity @a[distance=..8] run function kboss:system/boss/each/martellos/action/change/table/far/main
