
# 花火発射(正面)

## y軸調整
execute at @s run function kboss:system/each_boss/matsuri/action/common/ypos/main

# 1:チャージ
execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/matsuri/action/12/1

# 2:発射
execute if score @s kb.action_sub matches 2 run function kboss:system/each_boss/matsuri/action/12/2

