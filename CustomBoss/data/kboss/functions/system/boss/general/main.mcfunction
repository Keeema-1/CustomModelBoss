
# メインエンティティと同じidのサブエンティティにタグ付け
scoreboard players operation $temp kb.temp = @s kb.id
execute as @e[distance=..16,tag=KB.Boss,tag=!KB.AlreadyProcessed] if score @s kb.id = $temp kb.temp run tag @s add KB.BossCheck

# メイン角度を取得
execute store result score @s kb.ry_global run data get entity @s Rotation[0] 1
execute store result score @s kb.rx_global run data get entity @s Rotation[1] 1

function kboss:system/boss/each/skin

tag @e[distance=..16,tag=KB.BossCheck] add KB.AlreadyProcessed
tag @e[distance=..16,tag=KB.BossCheck] remove KB.BossCheck
