
data modify storage kboss:temp temp set from storage kboss:pose platypus.jump.left.3

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 30
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 20
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 10

function kboss:system/each_boss/platypus/pose/common
