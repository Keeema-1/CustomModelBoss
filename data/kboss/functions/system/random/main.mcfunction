
scoreboard players set $random kb.temp 0

# 0~1023
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 1
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 8
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 16
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 32
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 64
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 128
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 256
execute if predicate kboss:random/500m run scoreboard players add $random kb.temp 528

scoreboard players operation $random kb.temp %= $random_ways kb.temp
