
scoreboard players add $temp kb.id 1

data merge storage kboss:temp {check:0b}
execute as @e[tag=KB.Main] if score @s kb.id = $temp kb.id run data merge storage kboss:temp {check:1b}

execute if data storage kboss:temp {check:0b} run scoreboard players operation @e[tag=KB.NewSummon] kb.id = $temp kb.id
execute if data storage kboss:temp {check:1b} run function kboss:system/boss/each/common/give_id
