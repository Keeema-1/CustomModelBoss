
function kboss:dev/martellos/pose/save/common

data modify storage kboss:pose martellos.tackle.right.4 merge from storage kboss:temp temp

data remove storage kboss:temp temp

tellraw @s [{"text":"ポーズ：martellos.tackle.right.4を保存しました。","color": "yellow"}]