
# 辺りを見渡す

# 1: 右を見る
execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/platypus/action/3/1
# 2: 左を見る
execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/platypus/action/3/2
# 3: 発見時
execute if score @s kb.action_sub matches 3 run function kboss:system/each_boss/platypus/action/3/3
