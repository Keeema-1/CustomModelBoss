
data modify storage kboss:temp temp set from storage kboss:pose martellos.shake.1

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 10
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 1

function kboss:system/boss/each/martellos/pose/common
