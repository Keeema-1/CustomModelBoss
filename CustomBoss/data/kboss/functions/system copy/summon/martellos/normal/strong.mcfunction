
scoreboard players set $system kb.attack_damage 15
scoreboard players set $system kb.max_health 1000

function kboss:system/summon/martellos/normal/common

# 辺りを見渡す
execute as @e[tag=KB.Main,tag=KB.BossCheck] run function kboss:system/boss/each/martellos/action/change/2

tag @e[tag=KB.NewSummon] remove KB.BossCheck
tag @e[tag=KB.NewSummon] remove KB.NewSummon
