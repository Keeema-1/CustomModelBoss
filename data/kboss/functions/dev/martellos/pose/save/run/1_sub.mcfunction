
function kboss:dev/martellos/pose/save/common

data modify storage kboss:pose martellos.run.1 merge from storage kboss:temp temp

data remove storage kboss:temp temp

tellraw @s [{"text":"ポーズ：martellos.run.1を保存しました。","color": "yellow"}]