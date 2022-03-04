
data modify storage kboss:temp temp set from storage kboss:pose platypus.tackle.left.1

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 1
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 1
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 1

function kboss:system/each_boss/platypus/pose/common_reverse
