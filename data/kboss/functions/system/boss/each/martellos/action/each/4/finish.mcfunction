
function kboss:system/boss/each/common/action/player_direction/is_leftside
execute if data storage kboss:temp {direction:{leftside:0b}} run function kboss:system/boss/each/martellos/action/each/5/start
execute if data storage kboss:temp {direction:{leftside:1b}} run function kboss:system/boss/each/martellos/action/each/6/start


