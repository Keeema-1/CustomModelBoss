
# 近い
execute if entity @a[distance=..8] run function kboss:system/boss/each/martellos/action/random/near/main

# 遠い
execute unless entity @a[distance=..8] run function kboss:system/boss/each/martellos/action/random/far/main
