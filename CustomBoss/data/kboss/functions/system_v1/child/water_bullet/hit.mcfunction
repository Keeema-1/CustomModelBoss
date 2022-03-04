
data merge storage kboss:temp {check:1b}

kill @s

particle minecraft:splash ~ ~ ~ 1 0 1 1 50

#playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 1 1.5
playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1

data merge storage kboss:temp {check:0b}
execute if predicate kboss:random/500m run data merge storage kboss:temp {check:1b}

# 移動速度低下
execute if data storage kboss:temp {check:0b} run summon minecraft:area_effect_cloud ~ ~ ~ {Effects:[{Id:2b,Duration:200,Amplifier:2}],Duration:60,Radius:2.5f}
# 防御力低下
execute if data storage kboss:temp {check:1b} run summon minecraft:area_effect_cloud ~ ~ ~ {Effects:[{Id:31b,Duration:200,Amplifier:5}],Duration:60,Radius:2.5f}
