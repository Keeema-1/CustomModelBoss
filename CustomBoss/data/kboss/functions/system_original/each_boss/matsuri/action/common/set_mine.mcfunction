
summon minecraft:snowball ~ ~ ~ {Tags:["KB.Child","KB.Firework","KB.Mine","KB.NewSummoned"],NoGravity:1b,Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;16730112]}}},Glowing:1b}

scoreboard players set @e[tag=KB.NewSummoned] kb.action 0

scoreboard players set @e[tag=KB.NewSummoned] kb.action_time 1200

tag @e[tag=KB.NewSummoned] remove KB.NewSummoned
