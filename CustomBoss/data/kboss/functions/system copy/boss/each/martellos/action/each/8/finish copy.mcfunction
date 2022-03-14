
data merge storage kboss:temp {check:0b}
execute if predicate kboss:random/200m run data merge storage kboss:temp {check:1b}

execute if data storage kboss:temp {check:0b} run function kboss:system/boss/each/martellos/action/each/0/start
execute if data storage kboss:temp {check:1b} run function kboss:system/boss/each/martellos/action/each/7/start
