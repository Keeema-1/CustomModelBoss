

scoreboard players add $system kb.id 1

data merge storage kboss:temp {check:0b}
execute as @e[tag=KB.Main] if score @s kb.id = $system kb.id run data merge storage kboss:temp {check:1b}

execute if data storage kboss:temp {check:0b} run scoreboard players operation @e[tag=KB.NewSummon] kb.id = $system kb.id
execute if data storage kboss:temp {check:1b} run function kboss:system/summon/id
