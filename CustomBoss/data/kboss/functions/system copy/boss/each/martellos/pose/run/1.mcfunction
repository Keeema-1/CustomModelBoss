
data modify storage kboss:temp temp set from storage kboss:pose martellos.run.1

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 2
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck,tag=KB.LeftLeg1] kb.drx 20
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck,tag=KB.RightLeg1] kb.drx 20
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 2
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 1

function kboss:system/boss/each/martellos/pose/common
