
function kboss:system/boss/each/common/action/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:0b}} run function kboss:system/boss/each/martellos/action/change/5
execute if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/boss/each/martellos/action/change/6


