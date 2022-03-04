
function kboss:system/each_boss/martellos/action/common/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:0b}} run function kboss:system/each_boss/martellos/action_change/5
execute if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/each_boss/martellos/action_change/6


