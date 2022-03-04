
data modify storage kboss:temp temp set from storage kboss:pose martellos.walk.1

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 1
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck,tag=KB.LeftLeg1] kb.drx 6
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck,tag=KB.RightLeg1] kb.drx 6
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 1
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 1

function kboss:system/each_boss/martellos/pose/common
