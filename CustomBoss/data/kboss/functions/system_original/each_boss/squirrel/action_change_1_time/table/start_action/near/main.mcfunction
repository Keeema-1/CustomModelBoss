
data merge storage kboss {check:0b}

execute positioned ^ ^ ^0.1 facing entity @p feet rotated ~ 0 positioned ^ ^ ^0.1 if entity @s[distance=0.193..0.21] run data merge storage kboss {check:1b}

# 正面
execute if data storage kboss {check:1b} run function kboss:system/each_boss/matsuri/action_change/table/start_action/near/front
# 正面でない
execute if data storage kboss {check:0b} run function kboss:system/each_boss/matsuri/action_change/table/start_action/near/not_front
