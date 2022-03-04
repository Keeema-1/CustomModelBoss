
function kboss:system/each_boss/matsuri/action/common/player_direction/area

execute if data storage kboss:temp {direction:{area:"front"}} run function kboss:system/each_boss/matsuri/action_change/table/near/front
execute if data storage kboss:temp {direction:{area:"back"}} run function kboss:system/each_boss/matsuri/action_change/table/near/back
execute if data storage kboss:temp {direction:{area:"right"}} run function kboss:system/each_boss/matsuri/action_change/table/near/right
execute if data storage kboss:temp {direction:{area:"left"}} run function kboss:system/each_boss/matsuri/action_change/table/near/left
