
function kboss:system/boss/each/common/action/player_direction/area

execute if data storage kboss:temp {direction:{area:"front"}} run function kboss:system/boss/each/martellos/action/random/near/front
execute if data storage kboss:temp {direction:{area:"back"}} run function kboss:system/boss/each/martellos/action/random/near/back
execute if data storage kboss:temp {direction:{area:"right"}} run function kboss:system/boss/each/martellos/action/random/near/right
execute if data storage kboss:temp {direction:{area:"left"}} run function kboss:system/boss/each/martellos/action/random/near/left
