
# HP計算スコアの初期化
scoreboard players set $system kb.health 0

# メイン角度を取得
execute store result score @s kb.ry_global run data get entity @s Rotation[0] 1
execute store result score @s kb.rx_global run data get entity @s Rotation[1] 1

# 敵対相手
#function kboss:system/each_boss/common/target/main

# 各部位
execute store result score @s kb.temp if entity @e[distance=..16,tag=KB.BossCheck,tag=KB.AI]
execute if entity @s[tag=KB.Martellos] run scoreboard players set @s kb.temp2 15

execute if score @s kb.temp = @s kb.temp2 run function kboss:system/each_boss/general/sub

# HP計算
scoreboard players set $temp kb.temp 1024
scoreboard players operation $temp kb.temp *= @s kb.temp2
scoreboard players operation $system kb.health -= $temp kb.temp

scoreboard players operation $system kb.health += @s kb.max_health
scoreboard players operation @s kb.health = $system kb.health
# ボスバーは召喚時に名前変更
execute if score @s kb.id matches 1 store result bossbar kboss:health/1 value run scoreboard players get $system kb.health
execute if score @s kb.id matches 2 store result bossbar kboss:health/2 value run scoreboard players get $system kb.health
execute if score @s kb.id matches 3 store result bossbar kboss:health/3 value run scoreboard players get $system kb.health

# 注意!HP用エンティティが少ない場合はkillしないようにしてる
# 死亡(HPが0以下)
execute store result score @s kb.temp if entity @e[tag=KB.BossCheck,tag=KB.AI]
#execute if entity @s[tag=!KB.BigSquirrel,tag=!KB.Platypus] unless score $system kb.health matches 1.. if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/common/dead/when_die
execute if score @s kb.temp = @s kb.temp2 unless score $system kb.health matches 1.. if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/common/dead/when_die
#execute if score @s kb.temp matches 0 run function kboss:system/each_boss/common/dead/when_die

scoreboard players reset $temp
