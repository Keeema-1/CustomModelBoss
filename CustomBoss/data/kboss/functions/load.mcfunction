#ロード時に実行される
tellraw @s [{"text":""}]
tellraw @a [{"text":"データパック:Bossの導入に成功しました。","color":"yellow"}]

# 個体id
scoreboard objectives add kb.id dummy
execute unless score $system kb.id matches 0.. run scoreboard players set $system kb.id 0

# 一時変数
scoreboard objectives add kb.temp dummy
scoreboard objectives add kb.temp2 dummy

# 一時変数
scoreboard objectives add kb.target_id dummy

# 現在のアクション
scoreboard objectives add kb.action dummy
scoreboard objectives add kb.action_sub dummy

# アクション時間制御用
scoreboard objectives add kb.action_time dummy

# 動きを繰り返すときの制御用
scoreboard objectives add kb.anime_time dummy


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

# HP
scoreboard objectives add kb.health dummy
scoreboard objectives add kb.max_health dummy
## ボスパーツAIのhpが500未満になったら、このスコアを+1してHealth+=500
scoreboard objectives add kb.hp_remove_500 dummy

# 攻撃力
scoreboard objectives add kb.attack_damage dummy

# 怒りモード
#scoreboard objectives add kb.angry_time dummy
## 前回の怒り終了時のHP
#scoreboard objectives add kb.last_angry_health dummy

team add boss

bossbar add kboss:health/1 ""
bossbar add kboss:health/2 ""
bossbar add kboss:health/3 ""
