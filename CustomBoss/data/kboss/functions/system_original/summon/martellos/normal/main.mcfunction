
scoreboard players set $system kb.attack_damage 10
scoreboard players set $system kb.max_health 1200

function kboss:system/summon/martellos/normal/sub

# 辺りを見渡す
execute as @e[tag=KB.Main,tag=KB.BossCheck] run function kboss:system/each_boss/martellos/action_change/2

# エリア
scoreboard players operation @e[type=minecraft:marker,tag=KB.Main,tag=KB.BossCheck] island = $temp island
scoreboard players operation @e[type=minecraft:marker,tag=KB.Main,tag=KB.BossCheck] area = $temp area

tag @e[tag=KB.NewSummon] remove KB.BossCheck
tag @e[tag=KB.NewSummon] remove KB.NewSummon
