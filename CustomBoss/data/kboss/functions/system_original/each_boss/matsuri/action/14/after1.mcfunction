
data merge storage map:temp {check:0b}

#execute if predicate kboss:random/500m run data merge storage map:temp {check:1b}

execute if data storage map:temp {check:0b} run function kboss:system/each_boss/matsuri/action/14/to2
#execute if data storage map:temp {check:1b} run function kboss:system/each_boss/matsuri/action/14/to3
