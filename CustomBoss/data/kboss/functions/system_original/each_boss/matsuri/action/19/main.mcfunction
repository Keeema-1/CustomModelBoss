
# ステップ(右)

execute if score @s kb.action_sub matches 1 run function kboss:system/each_boss/matsuri/action/19/1

execute if score @s kb.action_sub matches 2 if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action/19/finish
