
function kboss:dev/martellos/pose/save/common

data modify storage kboss:pose martellos.knock.tail.1 merge from storage kboss:temp temp

data remove storage kboss:temp temp

tellraw @s [{"text":"ポーズ：martellos.knock.tail.1を保存しました。","color": "yellow"}]