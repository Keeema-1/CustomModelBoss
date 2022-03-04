
function kboss:system/each_boss/platypus/action/common/player_direction/area

execute if data storage kboss:temp {direction:{area:"front"}} run function kboss:system/each_boss/platypus/action_change/table/far/front
execute if data storage kboss:temp {direction:{area:"back"}} run function kboss:system/each_boss/platypus/action_change/table/far/back
execute if data storage kboss:temp {direction:{area:"right"}} run function kboss:system/each_boss/platypus/action_change/table/far/right
execute if data storage kboss:temp {direction:{area:"left"}} run function kboss:system/each_boss/platypus/action_change/table/far/left
