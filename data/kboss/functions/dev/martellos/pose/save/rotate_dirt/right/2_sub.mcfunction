
function kboss:dev/martellos/pose/save/common

data modify storage kboss:pose martellos.rotate_dirt.right.2 merge from storage kboss:temp temp

data remove storage kboss:temp temp

tellraw @s [{"text":"ポーズ：martellos.rotate_dirt.right.2を保存しました。","color": "yellow"}]