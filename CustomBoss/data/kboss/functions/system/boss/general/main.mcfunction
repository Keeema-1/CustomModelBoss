
# メインエンティティと同じidのサブエンティティにタグ付け
scoreboard players operation $system kb.temp = @s kb.id
execute as @e[distance=..16,tag=KB.Boss,tag=!KB.AlreadyProcessed] if score @s kb.id = $system kb.temp run tag @s add KB.BossCheck

execute if entity @s[tag=!KB.Dead] run function kboss:system/boss/general/living
execute if entity @s[tag=KB.Dead] run function kboss:system/boss/general/dead

tag @e[distance=..16,tag=KB.BossCheck] add KB.AlreadyProcessed
tag @e[distance=..16,tag=KB.BossCheck] remove KB.BossCheck
tag @e[tag=KB.Target] remove KB.Target
