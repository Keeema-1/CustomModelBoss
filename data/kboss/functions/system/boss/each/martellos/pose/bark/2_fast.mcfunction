
data modify storage kboss:temp temp set from storage kboss:pose martellos.bark.2

scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drx 4
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck,tag=KB.LeftLeg1] kb.drx 12
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck,tag=KB.RightLeg1] kb.drx 12
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.dry 4
scoreboard players set @e[tag=KB.Skin,tag=KB.BossCheck] kb.drz 4

function kboss:system/boss/each/martellos/pose/common
