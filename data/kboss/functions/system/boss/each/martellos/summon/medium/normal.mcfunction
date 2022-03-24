
scoreboard players set $temp kb.attack_damage 10
scoreboard players set $temp kb.max_health 800
scoreboard players set $temp kb.angry_border 300
# この時間中は怒り始めない
scoreboard players set $temp kb.angry_time 1200


function kboss:system/boss/each/martellos/summon/medium/common

# 辺りを見渡す
execute as @e[tag=KB.Main,tag=KB.BossCheck] run function kboss:system/boss/each/martellos/action/each/2/start

tag @e[tag=KB.BossCheck] remove KB.BossCheck

scoreboard players reset $temp
