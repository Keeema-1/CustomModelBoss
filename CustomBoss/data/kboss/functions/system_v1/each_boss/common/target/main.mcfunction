
#data merge storage hapuru {Check:0b}

#execute if entity @a[gamemode=!spectator,gamemode=!creative,distance=..64] run function hapuru:system/each_boss/target/player

#execute if data storage hapuru {Check:0b} if entity @e[type=#hapuru:target,tag=!HB.Hapurubokka,distance=..24] run function hapuru:system/each_boss/target/not_player

#execute if data storage hapuru {Check:0b} run tag @s add HB.NotTarget
#execute if data storage hapuru {Check:1b} if entity @s[tag=HB.NotTarget] if score @s hb.action matches 16 run function hapuru:system/each_boss/target/target_appear

tag @p add KB.Target
