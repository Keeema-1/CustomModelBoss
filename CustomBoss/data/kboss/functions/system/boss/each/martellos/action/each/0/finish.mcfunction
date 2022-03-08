
data merge storage kboss:temp {check:0b}
execute if predicate kboss:random/200m run data merge storage kboss:temp {check:1b}

execute if data storage kboss:temp {check:0b} run function kboss:system/boss/each/martellos/action/each/4/start
execute if data storage kboss:temp {check:1b} run function kboss:system/boss/each/martellos/action/random/main

# 威嚇
execute if predicate kboss:random/50m run function kboss:system/boss/each/martellos/action/each/14/start
