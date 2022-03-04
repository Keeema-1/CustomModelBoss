
data modify storage kboss:temp temp set from storage kboss:pose platypus.spit.front.1

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 2
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 2
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 2

function kboss:system/each_boss/platypus/pose/common
