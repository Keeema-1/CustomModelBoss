
execute if data storage kboss:test {next_action:1b} run tellraw @a "抽選：近距離左方"

scoreboard players set @s kb.temp 0

execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 8
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 4
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 2
execute if predicate kboss:random/500m run scoreboard players add @s kb.temp 1


# 1:接近
#execute if score @s kb.temp matches 25..31 run function kboss:system/each_boss/matsuri/action_change/1
# 4:ターン
#execute if score @s kb.temp matches 16..24 run function kboss:system/each_boss/matsuri/action_change/4
# 7:右パンチ
execute if score @s kb.temp matches 0 run function kboss:system/each_boss/matsuri/action_change/7
# 8:左パンチ
execute if score @s kb.temp matches 1..3 run function kboss:system/each_boss/matsuri/action_change/8
# 9:左回転
execute if score @s kb.temp matches 4 run function kboss:system/each_boss/matsuri/action_change/9
# 10:右回転
execute if score @s kb.temp matches 5 run function kboss:system/each_boss/matsuri/action_change/10
# 11:バックステップ
execute if score @s kb.temp matches 6 run function kboss:system/each_boss/matsuri/action_change/11
# 12:花火
execute if score @s kb.temp matches 7 run function kboss:system/each_boss/matsuri/action_change/12
# 13:ジャンプ
execute if score @s kb.temp matches 8 run function kboss:system/each_boss/matsuri/action_change/13
# 14:上ジャンプ&花火
execute if score @s kb.temp matches 9 run function kboss:system/each_boss/matsuri/action_change/14
# 15:走る
execute if score @s kb.temp matches 10 run function kboss:system/each_boss/matsuri/action_change/15
# 16:噛みつき
execute if score @s kb.temp matches 11 run function kboss:system/each_boss/matsuri/action_change/16
# 17:噛みつき右
#execute if score @s kb.temp matches 12..14 run function kboss:system/each_boss/matsuri/action_change/17
# 18:噛みつき左
execute if score @s kb.temp matches 12..14 run function kboss:system/each_boss/matsuri/action_change/18
# 19:右ステップ
#execute if score @s kb.temp matches 13 run function kboss:system/each_boss/matsuri/action_change/19
# 20:左ステップ
#execute if score @s kb.temp matches 14 run function kboss:system/each_boss/matsuri/action_change/20
# 21:バックステップ発射
execute if score @s kb.temp matches 15 run function kboss:system/each_boss/matsuri/action_change/21
