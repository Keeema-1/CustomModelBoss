
# y座標調整
function kboss:system/each_boss/matsuri/action/common/adjust_ypos

#execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action_change/table/normal
execute if score @s kb.action_time matches ..0 run function kboss:system/each_boss/matsuri/action_change/table/after_action
