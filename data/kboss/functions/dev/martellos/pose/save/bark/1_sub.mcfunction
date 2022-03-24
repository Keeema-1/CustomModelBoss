
function kboss:dev/martellos/pose/save/common

data modify storage kboss:pose martellos.bark.1 merge from storage kboss:temp temp

data remove storage kboss:temp temp

tellraw @s [{"text":"ポーズ：martellos.bark.1を保存しました。","color": "yellow"}]
