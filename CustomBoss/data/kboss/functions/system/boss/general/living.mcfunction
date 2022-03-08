
# HP計算スコアの初期化
scoreboard players set $boss_health kb.temp 0

# メイン角度を取得
execute store result score @s kb.ry_global run data get entity @s Rotation[0] 1
execute store result score @s kb.rx_global run data get entity @s Rotation[1] 1

# 敵対相手
function kboss:system/boss/each/common/target/main

# 当たり判定用エンティティがすべてロードされているかどうかを調べる
execute store result score $hitbox_num kb.temp if entity @e[distance=..16,tag=KB.BossCheck,tag=KB.AI]
function kboss:system/boss/each/hitbox_num_correct

# 当たり判定用エンティティがすべてロードされていれば、処理
execute if score $hitbox_num kb.temp = $hitbox_num_correct kb.temp run function kboss:system/boss/general/active

# HP計算
scoreboard players set $health_remove kb.temp 1024
scoreboard players operation $health_remove kb.temp *= $hitbox_num kb.temp
scoreboard players operation $boss_health kb.temp -= $health_remove kb.temp

scoreboard players operation $boss_health kb.temp += @s kb.max_health
scoreboard players operation @s kb.health = $boss_health kb.temp
# ボスバーは召喚時に名前変更
execute if score @s kb.id matches 1 store result bossbar kboss:health/1 value run scoreboard players get $boss_health kb.temp
execute if score @s kb.id matches 2 store result bossbar kboss:health/2 value run scoreboard players get $boss_health kb.temp
execute if score @s kb.id matches 3 store result bossbar kboss:health/3 value run scoreboard players get $boss_health kb.temp

# 当たり判定用エンティティが足りない&プレイヤーが近い or 当たり判定用エンティティが足りている&HPが0以下 -> 死亡
# 死亡(HPが0以下)
execute store result score @s kb.temp if entity @e[tag=KB.BossCheck,tag=KB.AI]
execute if score $hitbox_num kb.temp = $hitbox_num_correct kb.temp unless score $boss_health kb.temp matches 1.. run function kboss:system/boss/each/die
#execute unless score $hitbox_num kb.temp = $hitbox_num_correct kb.temp if entity @a[distance=..32] run function kboss:system/boss/each/die

scoreboard players reset $temp
scoreboard players reset $boss_health
scoreboard players reset $hitbox_num
scoreboard players reset $hitbox_num_correct
scoreboard players reset $health_remove

tag @a[tag=KB.MainTarget] remove KB.MainTarget
tag @a[tag=KB.Target] remove KB.Target
