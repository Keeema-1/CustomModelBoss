
data modify storage kboss:temp temp set from storage kboss:pose martellos.knock.right.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 20
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 2

function kboss:system/each_boss/martellos/pose/common_reverse
