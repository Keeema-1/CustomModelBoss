#ロード時に実行される
tellraw @s [{"text":""}]
tellraw @a [{"text":"データパック:Bossの導入に成功しました。","color":"yellow"}]

# 個体id
scoreboard objectives add kb.id dummy
execute unless score $system kb.id matches 0.. run scoreboard players set $system kb.id 0

# 一時変数
scoreboard objectives add kb.temp dummy

# 各パーツの角度の制御用
## 相対
scoreboard objectives add kb.rx dummy
scoreboard objectives add kb.ry dummy
scoreboard objectives add kb.rz dummy
## グローバル
scoreboard objectives add kb.rx_global dummy
scoreboard objectives add kb.ry_global dummy
scoreboard objectives add kb.rz_global dummy
## 目標値
scoreboard objectives add kb.rx_goal dummy
scoreboard objectives add kb.ry_goal dummy
scoreboard objectives add kb.rz_goal dummy
## 角速度
scoreboard objectives add kb.drx dummy
scoreboard objectives add kb.dry dummy
scoreboard objectives add kb.drz dummy

team add boss

team modify boss collisionRule pushOwnTeam
team modify boss nametagVisibility never

function kboss:command/pose_data
