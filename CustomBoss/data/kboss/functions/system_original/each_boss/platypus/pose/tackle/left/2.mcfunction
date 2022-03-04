
data modify storage kboss:temp temp set from storage kboss:pose platypus.tackle.left.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 10

function kboss:system/each_boss/platypus/pose/common
