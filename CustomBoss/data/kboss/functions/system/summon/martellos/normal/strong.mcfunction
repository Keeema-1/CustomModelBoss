
scoreboard players set $temp kb.attack_damage 15
scoreboard players set $temp kb.max_health 1000
scoreboard players set $temp kb.angry_border 400
# この時間中は怒り始めない
scoreboard players set $temp kb.angry_time 1200


function kboss:system/summon/martellos/normal/common

# 辺りを見渡す
execute as @e[tag=KB.Main,tag=KB.BossCheck] run function kboss:system/boss/each/martellos/action/each/2/start

tag @e[tag=KB.NewSummon] remove KB.BossCheck
tag @e[tag=KB.NewSummon] remove KB.NewSummon

scoreboard players reset $temp