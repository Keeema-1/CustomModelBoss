
data modify storage kboss:temp temp set from storage kboss:pose martellos.rotate_dirt.right.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 1
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 2

function kboss:system/boss/each/martellos/pose/common