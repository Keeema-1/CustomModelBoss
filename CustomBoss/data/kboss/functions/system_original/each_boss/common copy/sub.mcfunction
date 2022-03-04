
# HP計算スコアの初期化
scoreboard players set $system kb.health 0

# メイン角度を取得
execute store result score @s kb.ry_global run data get entity @s Rotation[0] 1
execute store result score @s kb.rx_global run data get entity @s Rotation[1] 1

# 敵対相手
#function kboss:system/each_boss/common/target/main

# 各部位
execute store result score @s kb.temp if entity @e[tag=KB.BossCheck,tag=KB.AI]
execute if entity @s[tag=KB.BigSquirrel] run scoreboard players set @s kb.temp2 4
execute if entity @s[tag=KB.Platypus] run scoreboard players set @s kb.temp2 14
execute if entity @s[tag=KB.Martellos] run scoreboard players set @s kb.temp2 15

execute if score @s kb.temp = @s kb.temp2 run function kboss:system/each_boss/common/each_part
execute unless score @s kb.temp = @s kb.temp2 if entity @s[tag=PlayingMovie] run function kboss:system/each_boss/common/each_part
execute if entity @s[tag=!KB.BigSquirrel,tag=!KB.Platypus,tag=!KB.Martellos] run function kboss:system/each_boss/common/each_part

# HP計算
execute if entity @s[tag=KB.Matsuri] run scoreboard players remove $system kb.health 9216
execute if entity @s[tag=KB.Platypus] run scoreboard players remove $system kb.health 14336
execute if entity @s[tag=KB.BigSquirrel] run scoreboard players remove $system kb.health 4096
execute if entity @s[tag=KB.Mantis] run scoreboard players remove $system kb.health 0
execute if entity @s[tag=KB.Martellos] run scoreboard players remove $system kb.health 15360
scoreboard players operation $system kb.health += @s kb.max_health
scoreboard players operation @s kb.health = $system kb.health
# ボスバーは召喚時に名前変更
execute if score @s kb.id matches 1 store result bossbar kboss:health/1 value run scoreboard players get $system kb.health
execute if score @s kb.id matches 2 store result bossbar kboss:health/2 value run scoreboard players get $system kb.health
execute if score @s kb.id matches 3 store result bossbar kboss:health/3 value run scoreboard players get $system kb.health

# 注意!HP用エンティティが少ない場合はkillしないようにしてる
# 死亡(HPが0以下)
execute store result score @s kb.temp if entity @e[tag=KB.BossCheck,tag=KB.AI]
execute if entity @s[tag=!KB.BigSquirrel,tag=!KB.Platypus] unless score $system kb.health matches 1.. if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/common/dead/when_die
execute if entity @s[tag=KB.BigSquirrel] if score @s kb.temp matches 4 unless score $system kb.health matches 1.. if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/common/dead/when_die
execute if entity @s[tag=KB.Platypus] if score @s kb.temp matches 14 unless score $system kb.health matches 1.. if entity @s[tag=!PlayingMovie] run function kboss:system/each_boss/common/dead/when_die
#execute if score @s kb.temp matches 0 run function kboss:system/each_boss/common/dead/when_die
