
# メインエンティティと同じidのサブエンティティにタグ付け
scoreboard players operation $temp kb.temp = @s kb.id
execute as @e[distance=..16,tag=KB.Boss,tag=!KB.AlreadyProcessed] if score @s kb.id = $temp kb.temp run tag @s add KB.BossCheck

# 生存時
execute if entity @s[tag=!KB.Dead] run function kboss:system/boss/general/living
# 死亡時
execute if entity @s[tag=KB.Dead] run function kboss:system/boss/general/dead

tag @e[distance=..16,tag=KB.BossCheck] add KB.AlreadyProcessed
tag @e[distance=..16,tag=KB.BossCheck] remove KB.BossCheck
