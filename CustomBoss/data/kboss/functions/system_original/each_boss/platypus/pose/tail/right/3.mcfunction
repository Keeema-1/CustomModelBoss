
data modify storage kboss:temp temp set from storage kboss:pose platypus.tail.left.3

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 5
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 5
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 5

function kboss:system/each_boss/platypus/pose/common_reverse
